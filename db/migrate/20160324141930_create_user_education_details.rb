class CreateUserEducationDetails < ActiveRecord::Migration
  def change
    create_table :user_education_details do |t|
      t.string :higest_education
      t.string :specilization
      t.string :institute
      t.integer :passing_year

      t.timestamps null: false
    end
  end
end
