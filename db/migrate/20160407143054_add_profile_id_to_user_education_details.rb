class AddProfileIdToUserEducationDetails < ActiveRecord::Migration
  def change
    add_column :user_education_details, :profile_id, :integer
  end
end
