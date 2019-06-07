class Quotation < ApplicationRecord
  belongs_to :opportunity
  has_many :business_proposals, dependent: :destroy
  has_many :missions, dependent: :destroy
end
