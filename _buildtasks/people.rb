class Person
	#Making this a class so that we can run validations/substitute defaults, etc.
	attr_accessor :role, :name
	def initialize(name, role)
		@name = name
		@role = role
	end
end