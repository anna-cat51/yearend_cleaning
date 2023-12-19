class Room < ApplicationRecord
  has_many :checklists
  belongs_to :layout
end
