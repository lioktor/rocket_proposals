class Opportunity < ApplicationRecord
  belongs_to :client
  belongs_to :user
  has_many :quotations
  has_many :business_proposals, through: :quotations
end
