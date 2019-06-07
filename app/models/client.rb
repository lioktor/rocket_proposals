class Client < ApplicationRecord
  belongs_to :user
  has_many :opportunities
  has_many :quotations, through: :opportunities
  has_many :business_proposals, through: :quotations

  mount_uploader :company_picture, PhotoUploader

  geocoded_by :company_address
  after_validation :geocode, if: :will_save_change_to_company_address?
end
