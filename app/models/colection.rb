class Colection < ApplicationRecord
  belongs_to :user
  belongs_to :output
  
  validates :user_id, presence: true
  validates :output_id, presence: true
  validates_uniqueness_of :output_id, scope: :user_id
end
