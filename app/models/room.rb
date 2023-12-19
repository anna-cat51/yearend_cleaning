class Room < ApplicationRecord
  belongs_to :layout
  has_many :checklists, dependent: :destroy
end
