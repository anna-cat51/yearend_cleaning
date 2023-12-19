class Layout < ApplicationRecord
  has_many :layout_rooms
  has_many :rooms, through: :layout_rooms
end
