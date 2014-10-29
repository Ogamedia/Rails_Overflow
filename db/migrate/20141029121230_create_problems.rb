class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.text :title
      t.text :text
      t.string :screenshot

      t.timestamps
    end
  end
end
