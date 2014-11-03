class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :solution, index: true

      t.timestamps
    end
  end
end
