require 'time'

def safe_parse(date_string)
  Time.parse(date_string) rescue 'パースできませんでした'
end

puts safe_parse('2023')              #=> パースできませんでした
puts safe_parse('2023-01-26 12:00')  #=> 2023-01-26 12:00:00 +0900
