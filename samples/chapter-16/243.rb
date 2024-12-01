require 'yaml'
require 'date'

settings = {
  "writers"   => ["budo", "kymmt", "shimoju"],
  "title"     => "The Ruby Book",
  "publisher" => "技術評論社",
  "range"     => (1..100),
  "date"      => Date.new(2023, 1, 28)
}

puts YAML.dump(settings)
#=> writers:
#   - budo
#   - kymmt
#   - shimoju
#   title: The Ruby Book
#   publisher: 技術評論社
#   range: !ruby/range
#     begin: 1
#     end: 100
#     excl: false
#   date: 2023-01-28
