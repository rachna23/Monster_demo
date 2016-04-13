class AddUserIdToUserEducationDetails < ActiveRecord::Migration
  def change
    add_column :user_education_details, :user_id, :integer
  end
end
