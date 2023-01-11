class Output < ApplicationRecord
  has_many :taggings, dependent: :destroy
  has_many :colections, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
