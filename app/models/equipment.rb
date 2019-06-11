class Equipment < ApplicationRecord
  has_many :missions, through: :mission_equipments, optional: true

  mount_uploader :picture, PhotoUploader
end
