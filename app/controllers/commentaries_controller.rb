class CommentariesController < ApplicationController
  def index
    @commentaries = Commentary.all
  end

  def create
    commentary = Commentary.create(commentary_params)
    redirect_to commentary_path(commentary.id)
  end

  def show
    @commentary = Commentary.find(params[:id])
  end

  def new
    @commentary = Commentary.new
  end

  def edit
    @commentary = Commentary.find(params[:id])
  end

  def update
    @commentary = Commentary.find(params[:id])
    @commentary.update(commentary_params)
    redirect_to commentaries_path
  end

  def destroy
    @commentary = Commentary.find(params[:id])
    @commentary.destroy
    redirect_to commentaries_path
  end

  private

  def commentary_params
    params.require(:commentary).permit(:content)
  end
end
