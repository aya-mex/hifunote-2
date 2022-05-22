class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def create
    @record_favorite = Favorite.new(user_id: current_user.id, record_id: params[:record_id])
    @record_favorite.save
    redirect_to record_path(params[:record_id]) 
  end
  
  def destroy
    @record_favorite = Favorite.find_by(user_id: current_user.id, record_id: params[:record_id])
    @record_favorite.destroy
    redirect_to record_path(params[:record_id]) 
  end
end
