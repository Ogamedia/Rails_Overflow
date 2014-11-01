class Solution < ActiveRecord::Base
  validates :text, presence: true,length: { minimum: 10 }
  belongs_to :problem
end
