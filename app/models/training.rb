class Training < ApplicationRecord
  has_many :missions, through: :mission_trainings

  mount_uploader :icon, PhotoUploader
end
