p String.superclass                        #=> Object
p String.superclass.superclass             #=> BasicObject
p String.superclass.superclass.superclass  #=> nil

p String.ancestors  #=> [String, Comparable, Object, Kernel, BasicObject]
p String.ancestors.select { |ancestor| ancestor.class == Class }  #=> [String, Object, BasicObject]

Integer.ancestors.each do |ancestor|
  puts "#{ancestor}: #{ancestor.class}"
end
#=> Integer: Class
#   Numeric: Class
#   Comparable: Module
#   Object: Class
#   Kernel: Module
#   BasicObject: Class