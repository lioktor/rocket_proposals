class Client < ApplicationRecord
  belongs_to :user
  has_many :opportunities, dependent: :destroy
  has_many :quotations, through: :opportunities, dependent: :destroy
  has_many :business_proposals, through: :quotations, dependent: :destroy
end
