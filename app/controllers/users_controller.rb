class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def create
    @user = User.create(user_params)
    p "Regarde ici"
    p @user
    redirect_to user_gossips_path(@user.id)
  end

  def new
    @user = User.new
    p "Je suis new"
    p @user
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

  def gossip_params
    params.require(:gossip).permit(:title, :content, :user_id)
  end

end
