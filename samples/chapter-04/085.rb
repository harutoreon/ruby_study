numbers = [2022, 2, 28]
p numbers.pack('c*')
p numbers.pack('s*')
p numbers.pack('l>*')

byte = "\xE6\a"
p byte.unpack('c*')
p byte.unpack('s*')
p byte.unpack('l*')
p byte.unpack('H*')
