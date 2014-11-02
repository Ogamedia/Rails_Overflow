class RemoveScreenshotFromProblems < ActiveRecord::Migration
  def self.up
    remove_column :problems, :screenshot, :string
  end

  def self.down
  	 add_column :problems, :screenshot, :string
  end

end
