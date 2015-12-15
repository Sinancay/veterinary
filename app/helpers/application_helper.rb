module ApplicationHelper

	def gender input
		return input ? 'Female' : 'Male'	
	end

	def user id
		User.find(id)
	end
	

end
