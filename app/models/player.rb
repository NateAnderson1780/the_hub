class Player < ApplicationRecord
  has_many :userplayers
  has_many :users, through: :userplayers
end
