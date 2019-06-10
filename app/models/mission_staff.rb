class MissionStaff < ApplicationRecord
  belongs_to :mission
  belongs_to :staff
end
