class Translation < ApplicationRecord
  has_and_belongs_to_many :words
  has_and_belongs_to_many :collects
end
