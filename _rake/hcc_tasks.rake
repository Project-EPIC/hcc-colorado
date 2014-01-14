require './_buildtasks/parse_to_yaml'

write_directory = './data'
data = {
	:courses => 	{ 	:key 	=> "0AhQ6tqeOTfwBdDdyY1U4UlBnTk5rc1BIRDhnckhoQ1E",
				  		:object => "Course"},

	:people  => 	{ 	:key    => "0AhQ6tqeOTfwBdFhrTmxXM0oxYkx2Vl9ucXJpd0hQRHc",
				  		:object => "Person"},

	:publications =>{	:key 	=> " -Key TBD- ",
						:object => "Publication"}}
namespace :update do
	desc "Get People"
	task :people do
		unless ENV['type']
			puts "Please specify a type, for example: 
			rake people type=Faculty
			rake people type=Students
			rake people type=Alumni
			rake people type=Researchers"
		else
			require './_buildtasks/people'
			type = ENV['type']
			puts "Generating People YAML file for #{type}"
			
			people = parse_spreadsheet(
				session, data[:people][:object], data[:people][:key], type)
			
			write_to_yaml(people, write_directory, type)
		end
	end

	desc "Get Courses"
	task :courses do
		unless ENV['type']
			puts "Please specify a type, for example: 
			rake courses type=Undergraduate
			rake courses type=Graduate"
		else
			type = ENV['type']
			puts "Generating Courses YAML file for #{type}"

			require './_buildtasks/courses'
			
			courses = parse_spreadsheet(session,'Course',keys[:courses])
			write_to
			
			#make_yaml(session, "./_data", type)
		end
	end

	desc "Get Publications"
	task :publications do
		puts "Generating Publications YAML file"
	end

end #End namespace

desc "Full Refresh & Build"
task :fullbuild do
	puts "Doing a full build of the website:"
	puts "TODO"
end

desc "Serve Full Site from Localhost"
task :localpreview do
	puts "Building site..."
	system ("jekyll build")
	puts "Copying to localhost"
	system ("cp -r -v _site/* /Library/WebServer/Documents/")
end