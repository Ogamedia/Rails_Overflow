class Problem < ActiveRecord::Base
 validates :title, :text, presence: true
 has_many :solutions
end
