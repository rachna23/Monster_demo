class Profile < ActiveRecord::Base
	belongs_to :user
	# has_many :user_education_details, dependent: :destroy 
	# accepts_nested_attributes_for :user_education_details
end




