class Output < ApplicationRecord
  has_many :taggings, dependent: :destroy
  has_many :tags, dependent: :destroy
  has_many :colections, dependent: :destroy
  has_many :reviews, dependent: :destroy
  belongs_to :user
  
  # colectionsテーブルにuser.idが存在するかどうか
  def colectioned_by?(user)
    colections.where(user_id: user.id).exists?
  end
  
end
