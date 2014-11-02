class Solution < ActiveRecord::Base
<<<<<<< HEAD
  validates :text, :problem_id, presence: true
=======
  validates :text, presence: true,length: { minimum: 10 }
>>>>>>> 70516d9f5a4b349bee234b28e49b6b18ee98d335
  belongs_to :problem
end
