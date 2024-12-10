require 'optparse'

opt = OptionParser.new

upcase = false
opt.on('-u', '--upcase', 'メッセージを大文字に変換') { upcase = true }

greeting = 'hello'
opt.on('-g VAL', '--greeting VAL', 'あいさつのメッセージを指定') { |v| greeting = v }

repeat = 1
opt.on('-r [VAL]', '--repeat [VAL]', '指定回数あいさつを出力。デフォルトは2回') { |v| repeat = v&.to_i || 2 }

opt.parse!(ARGV)

result = "#{greeting}, world"
result.upcase! if upcase
repeat.times { puts result }
