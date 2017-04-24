load "parser.rb"

begin
puts Parser.parse("../cielo-2017-04-15.csv")
rescue RuntimeError => e
  puts e.message
  puts e.backtrace
end
