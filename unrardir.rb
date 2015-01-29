#!/usr/bin/env ruby
# Ruby script to unrar multiple directories containing rar files. Allows for both .rar and .rXX file extensions.
# Requires unrar to be installed

dirs = Hash.new()
lastDir = ''
Dir.glob("**/*.rar") do |f|
	if !dirs.has_key?(File.dirname(f))
		dirs[File.dirname(f)] = Array.new()
	end
	
	dirs[File.dirname(f)].push(f)
end

unrarFile = ''
dirs.each{ |dir, files|
	if files.count > 1
		unrarFile = files.sort[-1]
	else
		unrarFile = files[0]
	end
	
	cmd = 'unrar e ' + unrarFile
	print cmd, "\n"
	value = `#{cmd}`
}
