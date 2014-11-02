class Problem < ActiveRecord::Base

  validates :title, :text, presence: true,length: { minimum: 10 }
 has_many :solutions
accepts_nested_attributes_for :solutions
end
