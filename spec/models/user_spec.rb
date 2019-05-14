require 'rails_helper'

describe User do
	it "Create new user and test their validity" do
		user = User.new(
			name:"Brian",
			email:'brianlec@example.com',
			password:'aaaaaaaa',
			password_confirmation:'aaaaaaaa')
	end


end