module ProfileHelper
	
	def not_present
		return "NA"
	end	

	def full_name(user)
		return user.first_name + user.last_name
	end 	
end
