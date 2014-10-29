class Problem < ActiveRecord::Base
<<<<<<< HEAD
  validates :title, :text, presence: true
=======
  has_many :solutions
>>>>>>> edf0a7717050cceef77eb6455951fa618438e29f
end
