class RatingsController < ApplicationController

    def new
        @rating = Rating.new
        @store = Store.find_by(id: params[:store_id])
        if @store == nil
            redirect_to stores_path
        end
    end

    def index
        if params[:store_id]
            @store = Store.find_by(id: params[:store_id])
            if @store == nil
                redirect_to stores_path
            else
                @ratings = @store.ratings
            end
        end
    end

    def create
        if params[:store_id]
            @store = Store.find_by(id: params[:store_id])
            if @store == nil
                redirect_to stores_path
            else
                @rating = Rating.find_or_create_by(store_id: @store.id, user_id: current_user.id)
                @rating.update(score: params[:rating][:score])
                redirect_to store_path(@rating.store)
            end
        else
            @rating = Rating.find_or_create_by(store_id: params[:id], user_id: current_user.id)
            @rating.update(score: params[:score])
            redirect_to store_path(@rating.store)
        end
    end

    def destroy
        @ratings = current_user.ratings
        if @ratings.include?(Rating.find_by_id(params[:id]))
            @rating = Rating.find_by_id(params[:id])
            @store = @rating.store
            @rating.destroy
        end
        redirect_to store_path(@store)
    end

end
