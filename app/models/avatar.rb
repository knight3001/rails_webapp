class Avatar < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true
  validates :picture, presence: true
  
  mount_uploader :picture, AvatarUploader
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  after_update :crop_avatar
  
  def crop_avatar
    picture.recreate_versions! if crop_x.present?
  end
end
