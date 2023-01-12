class List < ApplicationRecord
  belongs_to :user
  has_many :tasks, dependent: :destroy
  
  #Active StrageとListテーブルのアソシエーション
  has_one_attached :image
  
  #画像がなかったらsamle.jpg表示
  def get_list_image(width, height)
    unless list_image.attached?
      file_path = Rails.root.join('app/assets/images/sample.jpg')
      list_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    list_image.variant(resize_to_fill: [width, height]).processed
  end
  
end
