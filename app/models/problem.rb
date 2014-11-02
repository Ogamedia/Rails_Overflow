class Problem < ActiveRecord::Base
  validates :title, :text, presence: true,length: { minimum: 10 }
  mount_uploader :picture, PictureUploader
  has_many :solutions

end
