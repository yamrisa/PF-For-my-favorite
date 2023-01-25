class Output < ApplicationRecord
  
  has_many :colections, dependent: :destroy
  has_many :reviews, dependent: :destroy
  belongs_to :user
  
  # 必須入力のバリデーション
  validates :post, :release, presence: true
  
  # colectionsテーブルにuser.idが存在するかどうか
  def colectioned_by?(user)
    colections.where(user_id: user.id).exists?
  end
  
  # outputモデルから検索するメソッド
  def self.search(search)
    if search != ""
      Output.where('post LIKE(?)', "%#{search}%")
    else
      Output.all.where(release: 'release')
    end
  end
  
end
