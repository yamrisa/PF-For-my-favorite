class List < ApplicationRecord
  belongs_to :user
  
  #Active StrageとListテーブルのアソシエーション
  has_one_attached :image
  
  validates :goal, :relation, :task, :routine, presence: true
  
  #画像がなかったらsamle.jpg表示
  def get_image(width, height)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/sample.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image.variant(resize_to_fill: [width, height]).processed
  end
  
 
  
end
