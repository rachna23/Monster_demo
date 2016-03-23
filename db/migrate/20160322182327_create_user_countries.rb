class CreateUserCountries < ActiveRecord::Migration
  def change
    create_table :user_countries do |t|
      t.integer :user_id
      t.integer :city_id

      t.timestamps null: false
    end
  end
end
