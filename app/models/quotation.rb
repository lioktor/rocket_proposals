class Quotation < ApplicationRecord
  belongs_to :opportunity
  has_one :business_proposal, dependent: :destroy
  has_many :missions, dependent: :destroy
end
