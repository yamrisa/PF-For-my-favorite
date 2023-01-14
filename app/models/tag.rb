class Tag < ApplicationRecord
  has_many :taggings, dependent: :destroy
  belongs_to :output
end
