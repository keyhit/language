class Word < ApplicationRecord
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :translations
  belongs_to :lang
end
