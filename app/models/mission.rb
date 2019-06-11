class Mission < ApplicationRecord
  belongs_to :quotation, optional: true
  has_many :mission_staffs
  has_many :mission_trainings
  has_many :mission_equipments
  has_many :staffs, through: :mission_staffs, dependent: :destroy
  has_many :trainings, through: :mission_trainings, dependent: :destroy
  has_many :equipments, through: :mission_equipments, dependent: :destroy
end
