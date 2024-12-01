require 'yaml'
require 'date'

yaml_string = <<YAML
writers:
  - budo
  - kymmt
  - shimoju
title: The Ruby Book
publisher: 技術評論社
range: !ruby/range
  begin: 1
  end: 100
  excl: false
date: 2023-01-28
YAML

puts (YAML.load(yaml_string) rescue "読み込めないクラスがあります")
#=> 読み込めないクラスがあります

puts YAML.load(yaml_string, permitted_classes: [Date, Range])
#=> {"writers"=>["budo", "kymmt", "shimoju"], "title"=>"The Ruby Book", "publisher"=>"技術評論社",
#   "range"=>1..100, "date"=>#<Date: 2023-01-28 ((2459973j,0s,0n),+0s,-Infj)>}

puts YAML.unsafe_load(yaml_string)
#=> {"writers"=>["budo", "kymmt", "shimoju"], "title"=>"The Ruby Book", "publisher"=>"技術評論社",
#   "range"=>1..100, "date"=>#<Date: 2023-01-28 ((2459973j,0s,0n),+0s,-Infj)>}
