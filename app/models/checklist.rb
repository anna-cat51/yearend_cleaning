class Checklist < ApplicationRecord
  belongs_to :room
  belongs_to :user, optional: true
end