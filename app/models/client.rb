class Client < ApplicationRecord
  belongs_to :user
  has_many :opportunities
  has_many :quotations, through: :opportunities
  has_many :business_proposals, through: :quotations
end
