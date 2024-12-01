require 'yaml'

p YAML.load_file('book.yaml')
#=> {"writers"=>["budo", "kymmt", "shimoju"], "title"=>"The Ruby Book", "publisher"=>"技術評論社"}
