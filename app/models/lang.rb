class Lang < ApplicationRecord
  has_many :users
  has_many :words
end
