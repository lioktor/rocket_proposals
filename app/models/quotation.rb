class Quotation < ApplicationRecord
  belongs_to :opportunity
  has_many :business_proposals
  has_many :missions
end
