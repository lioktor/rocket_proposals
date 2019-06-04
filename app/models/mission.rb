class Mission < ApplicationRecord
  belongs_to :quotation
  has_many :staff
  has_many :training
  has_many :equipment
end
