class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.integer :notice_period
      t.integer :dob
      t.integer :job_type

      t.timestamps null: false
    end
  end
end
