class AddStatusToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :admin_status, :string
  end
end
