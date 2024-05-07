class Employee < ApplicationRecord

	has_many :documents #1 to many relationship each employee can have many document

	validates :first_name, :last_name, presence: true
	validates :email, presence: true, uniqueness: true
	validates :city, :state, :country, presence: true
	validates :date_of_joining, :date_of_birth, :job_title, presence: true

	def name
		"#{first_name} #{last_name}".strip #removes whitespace
	end

	def name_with_email
		"#{name}(#{email})"
	end
end
