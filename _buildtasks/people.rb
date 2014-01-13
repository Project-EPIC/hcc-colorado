require 'yaml'
require 'rails'
require 'google_drive'
require './_buildtasks/auth_google_drive'

############# Globals
class Person
	#Making this a class so that we can run validations/substitute defaults, etc.
	attr_accessor :role, :name
	def initialize(name, role)
		@name = name
		@role = role
	end
end

def parse_spreadsheet(session,sheet)
	ws = session.spreadsheet_by_key(
		"0AhQ6tqeOTfwBdFhrTmxXM0oxYkx2Vl9ucXJpd0hQRHc").worksheet_by_title(sheet)
	people = []

	#Assumes that 3rd row is header (Which it is by design)
	(4..ws.num_rows.to_i).to_a.each do |r|	    # Iterate through every row
		person = {}								# Make an empty hash for a person
		(1..ws.num_cols).to_a.each do |c|  		# Iterate over columns, load hash
			person[ws[3,c]] = ws[r,c]
		end

		#Account for empty cells
		if person['name']==""		#As long as name is empty, person won't go in
			next
		end

		#Turn person into an object
		this_person = Person.new(person['name'], sheet.capitalize.gsub(/s$/,''))
	
		#Now add keys as instance variables to the person... Cool!
		person.each do |k,v|
			unless v==""
				this_person.instance_variable_set("@#{k}", v)
			end
		end

		people << this_person	#Add the person to the people array
	end
	return people
end

def write_people_file(people, directory, filename)
	to_write = []
	
	#Make hash from instance values that aren't nil.
	people.each do |member|
		this_member = {}
		member.instance_values.each do |k,v|
			this_member[k]=v
		end
		to_write << this_member
	end

	#Actually write the file
	File.open(directory+'/'+filename+'.yml', 'wb') {|f|
		f.write(to_write.to_yaml)
	}
	return to_write
end

def make_yaml(session, directory, type)
	people = parse_spreadsheet(session, type)
	puts write_people_file(people, directory, type.downcase)
end

#make_yaml(session, directory, 'Faculty')