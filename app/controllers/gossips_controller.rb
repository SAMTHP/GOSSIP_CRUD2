class GossipsController < ApplicationController

  def index
    @user = User.find(params[:user_id]) 
    @gossips = Gossip.all

  end

  def create
    gossip = Gossip.create(gossip_params)
    p "*****************"
    p gossip_params
    p "*****************"
    p gossip
    redirect_to user_gossips_path(gossip.user_id)
  end

  def show
    @user = User.find(params[:user_id])
    @gossip = Gossip.find(params[:id])
    @gossip_commentaries = Gossip.find(params[:id]).commentaries
    puts "'''''''''''''''''''''''''''''''''''''''''''"
    puts @gossip_commentaries
  end

  def new
    @gossip = Gossip.new
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    @gossip.update(gossip_params)
    redirect_to user_gossips_path
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to user_gossips_path
  end

  private

  def gossip_params
    result = params.require(:gossip).permit(:title, :content)
    result[:user_id] = params[:user_id]
    return result
  end

end
