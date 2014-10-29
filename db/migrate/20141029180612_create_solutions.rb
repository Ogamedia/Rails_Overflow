class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.text :text
      t.string :screenshot
      t.integer :upvote
      t.references :problem, index: true

      t.timestamps
    end
  end
end
