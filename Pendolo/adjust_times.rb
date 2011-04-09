
puts "Wrong number of arguments [offset] [file] " unless ARGV.size == 2
exit unless ARGV.size == 2

offset = ARGV[0]

File.open(ARGV[1]).each_line{ |s|
  a = s
  unless s.match(/^#/) then
    stuff = s.split("\t")
    stuff[0] = (stuff[0].to_f - offset.to_f).to_s
    a = stuff.join "\t"
  end
  puts a
}




