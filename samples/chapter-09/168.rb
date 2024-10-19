require 'date'

def check_end_of_manth(date)
  if date.next_day.month != date.month
    puts "#{date}は月末です"
  else
    puts "#{date}は月末ではありません"
  end
end

check_end_of_manth(Date.new(2020, 2, 28))   #=> 2020-02-28は月末ではありません
check_end_of_manth(Date.new(2020, 2, 29))   #=> 2020-02-29は月末です
check_end_of_manth(Date.new(2020, 12, 31))  #=> 2020-12-31は月末です
