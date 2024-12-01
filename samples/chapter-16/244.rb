require 'perfect_toml'

toml_string = <<TOML
[book]
title = "The Ruby Book"

[publisher]
name = "技術評論社"
established_year = 1969

[authors]
names = ["budo", "kymmt", "shimoju"]
TOML

settings = PerfectTOML.parse(toml_string)
p settings
#=> {"book"=>{"title"=>"The Ruby Book"}, "publisher"=>{"name"=>"技術評論社", "established_year"=>1969}, "authors"=>{"names"=>["budo", "kymmt", "shimoju"]}}

p settings["book"]["title"]
#=> "The Ruby Book"

p settings["publisher"]["established_year"]
#=> 1969

p settings["authors"]["names"]
#=> ["budo", "kymmt", "shimoju"]
