class Training < ApplicationRecord
  belongs_to :mission, optional: true
end
