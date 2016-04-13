class AddUserUserEducationDetailsAttributesToUserEducationDetails < ActiveRecord::Migration
  def change
    add_column :user_education_details, :user_education_details_attributes, :integer
  end
end
