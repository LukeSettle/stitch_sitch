class LikesController < ApplicationController
  def create
    # unless current_user.likes.find_by(picture_id: params[:picture_id])
      @like = Like.new(picture_id: params[:picture_id], user_id: current_user.id)
      @picture = Picture.find(params[:picture_id])
      if @like.save
        render json: @picture.likes.count
      else
        render json: @like.errors.full_messages
      end
    # end
  end
end
