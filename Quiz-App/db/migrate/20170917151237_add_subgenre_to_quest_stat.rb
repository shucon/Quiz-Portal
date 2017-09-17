class AddSubgenreToQuestStat < ActiveRecord::Migration[5.1]
  def change
    add_column :quest_stats, :subgenre, :string
  end
end
