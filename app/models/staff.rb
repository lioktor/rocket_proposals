class Staff < ApplicationRecord
  belongs_to :mission, optional: true
end
