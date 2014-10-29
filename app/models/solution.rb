class Solution < ActiveRecord::Base
  validates :solution, presence: true
  belongs_to :problem
end
