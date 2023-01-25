class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  # アソシエーション
  has_many :lists, dependent: :destroy
  has_many :outputs, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :colections, dependent: :destroy
  has_many :colection_outputs, through: :colections, source: :output , dependent: :destroy
  has_many :events, dependent: :destroy
  
  # バリデーション
  validates :name, :email, :password, presence: true
  
  #ゲストログイン内のメソッド
  def self.guest
    find_or_create_by!(name: 'Guest player' ,email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "Guest player"
    end
  end
  
end
