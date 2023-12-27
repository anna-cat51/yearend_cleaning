class Room < ApplicationRecord
  belongs_to :user
  has_many :checklists, dependent: :destroy
  belongs_to :layout, optional: true
end
