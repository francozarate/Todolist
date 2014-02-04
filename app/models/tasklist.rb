class Tasklist < ActiveRecord::Base
	def check_task(id)
		Tasklist.update(id, :is_completed => true)
	end
end
