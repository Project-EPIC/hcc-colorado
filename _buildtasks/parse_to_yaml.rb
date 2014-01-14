require 'yaml'
require 'rails'
require 'google_drive'
require './_buildtasks/auth_google_drive'

def parse_spreadsheet(session,object_type,key,sheet)
	ws = session.spreadsheet_by_key(key).worksheet_by_title(sheet)
	puts ws=
	objects = []

	#TODO: Parse sub-features as lab.name or lab.url  split('.'), then pull first type as key; only capable of one level(?)

	#Assumes that 3rd row is header (Which it is by design)
	(4..ws.num_rows.to_i).to_a.each do |r|	    # Iterate through every row
		object = {}								# Make an empty hash for a person
		(1..ws.num_cols).to_a.each do |c|  		# Iterate over columns, load hash
			object[ws[3,c]] = ws[r,c]
		end

		#Account for empty cells
		if object['name']==""		#As long as name is empty, object doesn't parse
			next
		end

		#Make it a real object of specified type...

						# Metaprogramming required here!
		this_object = eval(object_type).new(object['name'], sheet.capitalize)

		#Now add keys as instance variables to the person... Cool!
		object.each do |k,v|
			unless v==""
				this_object.instance_variable_set("@#{k}", v)
			end
		end

		objects << this_object		#Add the object to the objects array
	end
	return objects
end

def write_to_yaml(objects, directory, filename)
	to_write = []
	
	#Make hash from instance values that aren't nil.
	objects.each do |object|
		this_object = {}
		object.instance_values.each do |k,v|
			this_object[k]=v
		end
		to_write << this_object
	end

	#Actually write the file
	File.open(directory+'/'+filename.downcase+'.yml', 'wb') {|f|
		f.write(to_write.to_yaml)
	}
	return to_write
end