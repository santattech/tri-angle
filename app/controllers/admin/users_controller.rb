class Admin::UsersController < ApplicationController
  before_filter :authenticate_admin

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    @user.roles = Role.where(id: params[:role][:ids].split(','))

    redirect_to edit_admin_user_path(@user), notice: "Updated successfully."
  end
end
