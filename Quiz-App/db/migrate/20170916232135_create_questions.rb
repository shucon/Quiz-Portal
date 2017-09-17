class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :option4
      t.string :genre
      t.integer :a1
      t.integer :a2
      t.integer :a3
      t.integer :a4

      t.timestamps
    end
  end
end
