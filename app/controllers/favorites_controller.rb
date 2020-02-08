class FavoritesController < ApplicationController
    def create
        @favorite = Favorite.find_or_create_by(store_id: params[:id], user_id: current_user.id)
        redirect_to favorite_path(@favorite)
    end
    
    def show
        @favorite = Favorite.find(params[:id])
    end

    private
     
    def favorite_params
        params.require(:favorite).permit(:name, :password)
    end
end
