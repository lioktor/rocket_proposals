class Equipment < ApplicationRecord
  belongs_to :mission, optional: true
end
