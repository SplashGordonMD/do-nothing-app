require 'rails_helper'

  RSpec.describe Task, type: :model do
     describe 'overdue' do
       it 'should switch overdue to false if it begins late' do
      task = Task.new(overdue: true)
      task.overdue
      expect(task.overdue).to eq(false)
      end
    it 'should switch overdue to true if it begins as false' do
      task = Task.new(overdue: false)
      task.overdue
      expect(task.overdue).to eq(true)
    end
  end
end

#   RSpec.describe Task, type: :model do
#      describe 'toggle_favorite' do
#        it 'should switch favorite to false if it begins as favorite' do
#       task = Task.new(favorite: true)
#       task.toggle_favorite!
#       expect(task.favorite).to eq(false)
#       end
#     it 'should switch favorite to true if it begins as false' do
#       task = Task.new(favorite: false)
#       task.toggle_favorite!
#       expect(task.favorite).to eq(true)
#     end
#   end
# end


# RSpec.describe Task, type: :model do
#   describe 'toggle_complete!' do
#     it 'should switch complete to false if it begins as true' do
#       task = Task.new(complete: true)
#       task.toggle_complete!
#       expect(task.complete).to eq(false)
#     end
#     it 'should switch complete to true if it begins as false' do
#       task = Task.new(complete: false)
#       task.toggle_complete!
#       expect(task.complete).to eq(true)
#     end
#   end