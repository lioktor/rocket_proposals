class Equipment < ApplicationRecord
  has_many :missions, through: :mission_equipments
  has_many :mission_equipments, dependent: :destroy

  mount_uploader :picture, PhotoUploader
end
