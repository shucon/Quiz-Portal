class AddGenreToQuestStat < ActiveRecord::Migration[5.1]
  def change
    add_column :quest_stats, :genre, :string
  end
end
