class Staff < ApplicationRecord
  belongs_to :mission, optional: true

  mount_uploader :picture, PhotoUploader
end
