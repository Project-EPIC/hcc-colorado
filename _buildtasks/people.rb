class Person
	#Making this a class so that we can run validations/substitute defaults, etc.
	attr_accessor :role, :name
	def initialize(name, role)
		@name = name
		@role = role
		puts "Name: #{@name}"
	end

	def full_access(k)
		return k
	end
end