class CreateQuestStats < ActiveRecord::Migration[5.1]
  def change
    create_table :quest_stats do |t|
      t.integer :quest_id
      t.integer :user_id
      t.integer :stat

      t.timestamps
    end
  end
end
