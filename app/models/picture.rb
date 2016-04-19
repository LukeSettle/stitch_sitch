class Picture < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  default_scope { order(score: :desc) }

  belongs_to :user
end
