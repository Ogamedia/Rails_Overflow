class Solution < ActiveRecord::Base
  validates :text, :problem_id, presence: true,length: { minimum: 1}
  has_many :votes, dependent: :destroy
  belongs_to :problem
end