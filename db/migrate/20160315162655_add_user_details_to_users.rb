class AddUserDetailsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :current_location, :string
  	add_column :users, :mobile_number, :integer
  	add_column :users, :total_experience, :integer
  	add_column :users, :industry, :string
  	add_column :users, :education_details, :string
  	add_column :users, :previous_company_details, :string
  end
end
