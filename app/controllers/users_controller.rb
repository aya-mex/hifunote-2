class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @nickname = @user.nickname
    @records = @user.records.order('created_at DESC')

    favorites = Favorite.where(user_id: current_user.id).pluck(:record_id)
    @favorite_list = Record.find(favorites) 
  end
end
