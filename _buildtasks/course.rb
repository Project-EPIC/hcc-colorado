class Course
	attr_accessor :name, :type
	def initialize(name, type)
		@name = name
		@type = type
		puts "Name: #{@name}"
	end

	def validate(params)
		return nil
	end
end