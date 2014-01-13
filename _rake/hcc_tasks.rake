desc "Get Publications"
task :publications do
	puts "Generating Publications YAML file"
end

desc "Get People"
task :people do
	puts "Generating Team YAML file"
	system('cd _buildtasks; ruby people.rb')
end

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