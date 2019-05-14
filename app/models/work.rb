class Work < ApplicationRecord
	belongs_to :task

	validates :email_to, presence: true
	validates_format_of :email_to,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
