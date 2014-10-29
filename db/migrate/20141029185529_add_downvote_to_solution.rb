class AddDownvoteToSolution < ActiveRecord::Migration
  def change
    add_column :solutions, :downvote, :integer
  end
end
