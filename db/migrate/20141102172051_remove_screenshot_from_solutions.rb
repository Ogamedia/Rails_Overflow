class RemoveScreenshotFromSolutions < ActiveRecord::Migration
  def self.up
    remove_column :solutions, :screenshot, :string
  end
  def self.down
  	add_column :solutions, :screenshot, :string
  end
end
