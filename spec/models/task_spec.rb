require 'rails_helper'

describe Task do
	it 'tests validations in task model' do
		task = Task.new(
			unit_code: nil)
			task.valid?
			expect(task.errors[:unit_code]).to include("can't be blank")
	end	
	it "is valid with unit_code,unit_name,semester" do
	task = Task.new(
		unit_code:"INF 321",
		unit_name:"Networks",
		semester: 1)
	end 
end