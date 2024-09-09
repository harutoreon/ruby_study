val = nil
host = val || 'http://localhost'
puts host

val = '1234'
port = val || '3000'
puts port

a = nil
a ||= 1
p a

a ||= 2
p a
