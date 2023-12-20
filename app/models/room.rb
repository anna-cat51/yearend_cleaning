class Room < ApplicationRecord
  has_many :checklists
  belongs_to :layout, optional: true
end
