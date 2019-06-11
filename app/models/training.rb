class Training < ApplicationRecord
  has_many :missions, through: :mission_trainings, optional: true

  mount_uploader :icon, PhotoUploader
end
