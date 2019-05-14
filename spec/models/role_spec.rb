require 'rails_helper'

describe Role do
	it "Create new user and test their validity" do
		role = Role.new(
			name:"lecture")
		expect(role).to be_valid
	end
end