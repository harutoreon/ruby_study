require 'thor'

class Greeting < Thor
  desc 'daytime', '昼のあいさつ'
  def daytime
    puts 'こんにちは'
  end

  desc 'evening', '夜のあいさつ'
  def evening
    puts 'こんばんは'
  end
end

Greeting.start(ARGV)
