class Mission < ApplicationRecord
  belongs_to :quotation, optional: true
  has_many :staffs
  has_many :trainings
  has_many :equipments
end
