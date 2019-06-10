class Staff < ApplicationRecord
  has_many :missions, through: :mission_staffs

  mount_uploader :picture, PhotoUploader
end
