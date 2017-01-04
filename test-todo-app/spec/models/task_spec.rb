require 'rails_helper'

RSpec.describe Task, type: :model do
 describe 'toggle_complete!' do
  it 'should switch complete to false if it begins as true' do
  task = Task.new(complete: true)
  task.toggle_complete!
  expect(task.complete).to eq(false)
	end
  end

it 'should switch complete to true if it begins as false' do
  task = Task.new(complete: false)
  task.toggle_complete!
  expect(task.complete).to eq(true)
	end
  end