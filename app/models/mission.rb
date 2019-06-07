class Mission < ApplicationRecord
  belongs_to :quotation, optional: true
  has_many :staffs, dependent: :destroy
  has_many :trainings, dependent: :destroy
  has_many :equipments, dependent: :destroy
end
