require 'optparse'

opt = OptionParser.new

upcase = false
opt.on('-u', '--upcase') { upcase = true }

message = 'hello'
opt.on('-m VAL', '--message VAL') { |v| message = v }

repeat = 1
opt.on('-r [VAL]', '--repeat [VAL]') { |v| repeat = v&.to_i || 2 }

opt.parse!(ARGV)

result = "#{message}, world"
result.upcase! if upcase
repeat.times { puts result }
