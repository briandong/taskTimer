#!/usr/bin/env ruby

require "benchmark"
require "pp"

# Definition of a sample user class
class User

    # Name of user
    attr_accessor :name

    # What does the user say
    def speak
        return 'HelloWorld!'
    end

end #class User

# Only run the following code when this file is the main file being run
if __FILE__ == $0

	# start time
	start = Time.now
	puts "Start time: #{start}"

	# run command
	cmd = ARGV[0]
	puts "Executing command: #{cmd}"
	pp Benchmark.measure {system cmd}

	# stop time
	stop = Time.now
	puts "Stop time:  #{stop}"

	puts "*"*70

	# calculate elapsed time
	elapsed = stop - start

	if elapsed < 60
		t_msg = "#{elapsed} seconds"
	elsif elapsed < 3600
		t_msg = "#{elapsed/60} minutes"
	else
		t_msg = "#{elapsed/3600} hours"
	end

	puts "Time elapsed: #{t_msg}"

end #if
