puts Dir.pwd
#=> /Users/user/workspace/study/ruby_study/samples/chapter-11

Dir.chdir('..')
puts '移動後'
puts "Dir.pwd: #{Dir.pwd}"
puts "File.expand_path('..'): #{File.expand_path('..')}"
#=> 移動後
#   Dir.pwd: /Users/user/workspace/study/ruby_study/samples
#   File.expand_path('..'): /Users/user/workspace/study/ruby_study

Dir.chdir('chapter-11')
puts '移動前'
puts "Dir.pwd: #{Dir.pwd}"
puts "File.expand_path('..'): #{File.expand_path('..')}"
#=> 移動前
#   Dir.pwd: /Users/user/workspace/study/ruby_study/samples/chapter-11
#   File.expand_path('..'): /Users/user/workspace/study/ruby_study/samples

Dir.chdir('..') do
  puts '移動後'
  puts "Dir.pwd: #{Dir.pwd}"
  puts "File.expand_path('..'): #{File.expand_path('..')}"
end
#=> 移動後
#   Dir.pwd: /Users/user/workspace/study/ruby_study/samples
#   File.expand_path('..'): /Users/user/workspace/study/ruby_study

puts '移動前'
puts "Dir.pwd: #{Dir.pwd}"
puts "File.expand_path('..'): #{File.expand_path('..')}"
#=> 移動前
#   Dir.pwd: /Users/user/workspace/study/ruby_study/samples/chapter-11
#   File.expand_path('..'): /Users/user/workspace/study/ruby_study/samples
