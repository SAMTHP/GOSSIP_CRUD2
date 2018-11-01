class CommentariesController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @gossip = Gossip.find(params[:gossip_id])
    @commentaries = Commentary.all
  end

  def new
    @user = User.find(params[:user_id])
    p "''''''''''''''''''''''''''"
    puts @user.id
    @gossip = Gossip.find(params[:gossip_id])
    p "''''''''''''''''''''''''''"
    puts @gossip.id
    @commentary = Commentary.new
    puts @commentary
  end

  def create
    p @user = User.find(params[:user_id])
    p @gossip = Gossip.find(params[:gossip_id])
    puts "'''''''''''''''''''''''REGARDE ICI''''''''''''''''''''''''''"
    p commentary = Commentary.create(content: params[:commentary][:content], user_id: params[:user_id], gossip_id: params[:gossip_id])
    redirect_to(user_gossip_path(@user.id, @gossip.id))
  end

  def show
    @user = User.find(params[:user_id])
    @gossip = Gossip.find(params[:gossip_id])
    # @commentary = Commentary.new
  end

  def edit
    @user = User.find(params[:user_id])
    @gossip = Gossip.find(params[:id])
    @commentary = Commentary.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @gossip = Gossip.find(params[:id])
    @commentary = Commentary.find(params[:id])
    @commentary.update(content: params[:commentary][:content], user_id: params[:commentary][:user_id], gossip_id: params[:commentary][:gossip_id])
    redirect_to user_gossip_path
  end

  def destroy
    @user = User.find(params[:user_id])
    @gossip = Gossip.find(params[:id])
    @commentary = Commentary.find(params[:id])
    @commentary.destroy
    redirect_to commentaries_path
  end

  # private

  # def commentary_params
  #   result = params.require(:commentary).permit(:content)
  #   result[:user_id] = params[:user_id]
  #   result[:gossip_id] = params[:gossip_id]
  #   return result
  # end
end
