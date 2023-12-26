class Room < ApplicationRecord
  has_many :checklists, dependent: :destroy
  belongs_to :layout, optional: true
end
