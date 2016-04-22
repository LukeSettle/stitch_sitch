class PicturesController < ApplicationController
  authenticated!
  
  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new create_params
    @picture.save
    redirect_to picture_path(@picture)
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to root_path
  end

  def vote
    @picture = Picture.find(params[:id])
    @picture.score += params[:score].to_i
    @picture.save
    render json: @picture
  end

  protected
    def create_params
      params.require(:picture).permit(:title, :description, :image).merge(user: current_user)
    end
end
