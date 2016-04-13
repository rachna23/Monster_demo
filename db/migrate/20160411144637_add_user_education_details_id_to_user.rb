class AddUserEducationDetailsIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :user_education_details_id, :integer
  end
end
