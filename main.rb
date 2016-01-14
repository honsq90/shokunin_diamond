require_relative 'diamond'
input = ARGV[0]

begin
  Diamond.new(input).print
rescue Exception => e
  puts e.message
end
