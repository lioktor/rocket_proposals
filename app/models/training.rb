class Training < ApplicationRecord
  belongs_to :mission, optional: true

  mount_uploader :icon, PhotoUploader
end
