
## This program shows the maximums in a series of oscillating - but not fluctuating - measures (for x)
## It is appropriate to know the period of a quasi-sinusoid series of measurements
#
# It expects a datafile with the columns:
# (time) (x)
# Comments are lines that begin with an '#' and are printed before anything else


puts "Wrong number of arguments [file] " unless ARGV.size == 1
exit unless ARGV.size == 1

file = ARGV[0]

previous = 0
was_growing = false
current_count = 1

# Time interval, in milliseconds
time_interval = 50

# Field separator
field_separator = "\t"

# Just some arrays for calculations
values = Array.new
maxs = Array.new
comments  = Array.new

# Extract file values
File.open(file).each_line { |s|
  if s.match(/^#/)
    comments << s
  else
    values << s.split(field_separator)
  end
}

# Discover the maximums
# The maximum is determined as the value immediately before there is
# a start in decreasing. The measurements are therefore assumed not
# to fluctuate significantly (or at all)

values.each_with_index do |s, i|
  
  current = s[1].to_f.abs
  current_count += 1 if (current == previous) # Count repeated values starting from 1...
  next if (current == previous) # ...and continue
  
  if previous < current then
    was_growing = true # You're still growing, you're still glowing, you're still going strong
    
  elsif previous > current then # We are beginning to decrease (if was_growing)
    if was_growing then
      # Save a number of information about the maximum
      a = Hash[:value => previous, :count => current_count, :index => (i-current_count).to_i]
      maxs << a
    end
    
    # Reset the "growing" state
    was_growing = false
  end
  
  # reset variables (note: current_count is reinitialized because of the "next" above, so this is correct)
  current_count = 1
  previous = current
end


maxs.each do |s|
  mean_time = (values[s[:index]][0].to_f+values[s[:index]+s[:count]-1][0].to_f)/2
  
  # Debug output
  # puts time.to_s + "\t" + values[s[:index]][1]
  
  s[:time] = mean_time # Add the mean time to the hash
end

octave = "values = ["
timesum = 0

maxs.size.times do |i|
  # Skip last iteration: we need to always be within array boundaries
  next if i == maxs.size-1
  
  # Calculate delta
  dtime = (((maxs[i+1][:time]-maxs[i][:time])*1000).round.to_f/1000)
  timesum += dtime
  
  octave += " "
  # Show deltas (dt between each phase)
  octave += dtime.to_s
end
octave += "]"

puts comments
puts "Distance (in s) between the maximums."
puts "Mean = #{(1000*timesum/(maxs.size-1)).round.to_f/1000}"
puts
puts "String preformatted for GNU Octave:"
puts octave
puts
