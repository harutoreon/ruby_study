p 1.methods.first(5)                #=> [:magnitude, :abs, :floor, :ceil, :round]
p Math.methods.first(5)             #=> [:frexp, :ldexp, :hypot, :erf, :erfc]
p String.instance_methods.first(5)  #=> [:encoding, :force_encoding, :slice, :valid_encoding?, :ascii_only?]
p Array.instance_methods.grep(/each/)
#=> [:each_index, :reverse_each, :each, :each_with_index, :each_entry, :each_slice, :each_cons, :each_with_object]
