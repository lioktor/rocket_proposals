class Opportunity < ApplicationRecord
  belongs_to :client, optional: true
  belongs_to :user, optional: true
  has_many :quotations, dependent: :destroy
  has_many :business_proposals, through: :quotations, dependent: :destroy
end
