class List < ApplicationRecord
	has many: tasks

	def complete_all_tasks!
		tasks.each do |task|
			task.update(complete: true)
		end
	end

	def snooze_all_tasks!
		tasks.each do |task|
			task.snooze_hour!
		end
	end

	def total_duration
		total = 0
		tasks.each do |task|
			