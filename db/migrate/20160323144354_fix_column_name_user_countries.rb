class FixColumnNameUserCountries < ActiveRecord::Migration
  def change
  	rename_column :user_countries, :city_id, :country_id
  end
end


 