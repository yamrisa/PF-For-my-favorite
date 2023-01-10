class Output < ApplicationRecord
  has_many :taggings
  has_many :colections
  has_many :review
end
