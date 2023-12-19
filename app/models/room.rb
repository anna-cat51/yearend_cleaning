class Room < ApplicationRecord
  has_many :layout_rooms
  has_many :layouts, through: :layout_rooms
end
