class Mission < ApplicationRecord
  has_many :staff
  has_many :training
  has_many :equipment
end
