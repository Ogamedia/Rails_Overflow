class Problem < ActiveRecord::Base

  has_many :solutions
  validates :title, :text, presence: true,length: { minimum: 1}

 # accepts_nested_attributes_for :solutions
# mount_uploader :picture, PictureUploader

accepts_nested_attributes_for :solutions
end
