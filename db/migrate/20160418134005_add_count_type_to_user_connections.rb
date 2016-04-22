class AddCountTypeToUserConnections < ActiveRecord::Migration
  def change
    add_column :user_connections, :count, :integer
    add_column :user_connections, :connected_user_id, :integer
  end
end
