require 'rails_helper'

RSpec.describe List, type: :model do

  describe '#complete_all_tasks!' do
    it 'should mark all tasks from the list as complete' do
      list = List.create(name: "Chores")
      task1 = Task.create(complete: false, list_id: list.id)
      task2 = Task.create(complete: false, list_id: list.id)
      list.complete_all_tasks!
      list.tasks.each do |task|
        expect(task.complete).to eq(true)
      end
    end
  end

  describe '#snooze_all_tasks!' do
  	it 'should each task by by 1 hour' do
  		list = List.create(name: "Chores")
  		task deadline = Time.now
  		task1 = Task.create(deadline: task_deadline, list_id: list.id)
  		task2 = Task.create(deadline: task_deadline, list_id: list.id)
  		task3 = Task.create(deadline: task_deadline, list_id: list.id)
  			list.each do |task|
  				expect(task.deadline).to eq(task_deadline + 1.hour)
  			end
		end
	end





