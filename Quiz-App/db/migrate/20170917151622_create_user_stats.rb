class CreateUserStats < ActiveRecord::Migration[5.1]
  def change
    create_table :user_stats do |t|
      t.integer :user_id
      t.string :genre
      t.string :subgenre
      t.integer :last_ques
      t.integer :score

      t.timestamps
    end
  end
end
