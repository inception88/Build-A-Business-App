class FavoritesController < ApplicationController
    def show
    end

    def create
        @favorite = Favorite.find_or_create_by(store_id: params[:id], user_id: current_user.id)
        redirect_to favorite_path(@favorite)
    end

    def destroy
        @favorites = current_user.favorites
        if @favorites.include?(Favorite.find_by_id(params[:id]))
            Favorite.find_by_id(params[:id]).destroy
        end
        redirect_to '/favorites/1'
    end

end
