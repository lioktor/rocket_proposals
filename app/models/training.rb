class Training < ApplicationRecord
  has_many :missions, through: :mission_trainings
  has_many :mission_trainings, dependent: :destroy

  mount_uploader :icon, PhotoUploader
end
