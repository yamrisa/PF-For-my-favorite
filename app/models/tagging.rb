class Tagging < ApplicationRecord
  belongs_to :output
  belongs_to :tag
end
