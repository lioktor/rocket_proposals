class Equipment < ApplicationRecord
  has_many :missions, through: :mission_equipments

  mount_uploader :picture, PhotoUploader
end
