class RatingsController < ApplicationController

    def create
        @rating = Rating.find_or_create_by(store_id: params[:id], user_id: current_user.id)
        @rating.update(score: params[:score])
        redirect_to store_path(@rating.store)
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
