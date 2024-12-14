namespace :greeting do
  task :run do
    puts 'こんにちは'
  end

  task :morning do
    puts 'おはようございます'
  end
end

namespace :ask do
  task :run do
    puts '調子はどうですか'
  end
end
