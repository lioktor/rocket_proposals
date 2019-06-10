class Mission < ApplicationRecord
  belongs_to :quotation, optional: true
  has_many :staffs, through: :mission_staffs, dependent: :destroy
  has_many :trainings, through: :mission_staffs, dependent: :destroy
  has_many :equipments, through: :mission_staffs, dependent: :destroy
end
