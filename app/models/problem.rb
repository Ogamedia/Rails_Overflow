class Problem < ActiveRecord::Base
  validates :title, :text, presence: true
end
