class Picture < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment :image, content_type: { content_type: [ "image/jpg", "image/jpeg", "image/png", "image/gif" ] }

  default_scope { order(likes_count: :desc) }

  belongs_to :user
  has_many :likes
end
