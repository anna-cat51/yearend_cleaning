class Layout < ApplicationRecord
  has_many :rooms, dependent: :destroy
end
