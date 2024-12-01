require 'yaml'

yaml_string = <<YAML
writers:
  - budo
  - kymmt
  - shimoju
title: The Ruby Book
publisher: 技術評論社
YAML

p YAML.load(yaml_string)
#=> {"writers"=>["budo", "kymmt", "shimoju"], "title"=>"The Ruby Book", "publisher"=>"技術評論社"}
