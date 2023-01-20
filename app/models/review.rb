class Review < ApplicationRecord
  belongs_to :user
  belongs_to :output
  
  # 星評価の1~5を設定できる
  validates :all_rating, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1}, presence: true
end
