module ApplicationHelper

	def gender input
		return input ? 'Female' : 'Male'	
	end

	def user id
		User.find(id)
	end

	def animal_status index
		statuses = ['DEAD ANIMAL','SICK ANIMAL','HEALTHY ANIMAL']
		return statuses[index]
	end

	def message_count
		return  Contact.where(user_id: current_user.id).where(status: false).count	
	end

end
