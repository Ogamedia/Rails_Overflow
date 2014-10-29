class ChangeTitleTypeInProblems < ActiveRecord::Migration
  def self.up
  	change_column :problems, :title, :string

  end

  def self.down
  	change_column :problems, :title, :text
  end
end
