class Client < ApplicationRecord
  belongs_to :user

  has_many :opportunities, dependent: :destroy
  has_many :quotations, through: :opportunities, dependent: :destroy
  has_many :business_proposals, through: :quotations, dependent: :destroy


  mount_uploader :company_picture, PhotoUploader

  geocoded_by :company_address
  after_validation :geocode, if: :will_save_change_to_company_address?

end
