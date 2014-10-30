class Solution < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :problem
end
