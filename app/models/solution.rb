class Solution < ActiveRecord::Base
  validates :text, :problem_id, presence: true,length: { minimum: 10 }
  belongs_to :problem
end
