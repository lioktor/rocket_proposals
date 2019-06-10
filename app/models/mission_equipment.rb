class MissionEquipment < ApplicationRecord
  belongs_to :mission
  belongs_to :equipment
end
