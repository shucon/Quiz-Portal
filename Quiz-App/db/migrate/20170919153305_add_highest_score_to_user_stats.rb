class AddHighestScoreToUserStats < ActiveRecord::Migration[5.1]
  def change
    add_column :user_stats, :highest_score, :integer
  end
end
