class Solution < ActiveRecord::Base
  validates :text, :problem_id, presence: true
  belongs_to :problem
end
