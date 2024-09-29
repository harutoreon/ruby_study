s = 'Lorem ipsum dolor sit amet'
puts s.sub(/ .{5} /, ' ***** ')   #=> Lorem ***** dolor sit amet
puts s                            #=> Lorem ipsum dolor sit amet
puts s.sub!(/ .{5} /, ' ***** ')  #=> Lorem ***** dolor sit amet
puts s                            #=> Lorem ***** dolor sit amet
