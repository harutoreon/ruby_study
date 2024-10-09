p 123.instance_of?(Integer)  #=> true
p 123.instance_of?(String)   #=> false
p 123.instance_of?(Numeric)  #=> false

p 123.is_a?(Integer)  #=> true
p 123.is_a?(String)   #=> false
p 123.is_a?(Numeric)  #=> true

p 123.kind_of?(Numeric)  #=> true

p [].is_a?(Array)         #=> true
p [].is_a?(Enumerable)    #=> true
p ({}).is_a?(Hash)        #=> true
p ({}).is_a?(Enumerable)  #=> true
