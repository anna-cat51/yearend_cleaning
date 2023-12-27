class Room < ApplicationRecord
  belongs_to :user
  has_many :checklists, dependent: :destroy
  belongs_to :layout, optional: true

  scope :templates, -> { where(is_template: true) }
end
