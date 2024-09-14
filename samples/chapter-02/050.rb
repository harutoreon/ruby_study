p `echo Hello`
p $?
p $?.exitstatus

p system('echo Hello')
p $?.exitstatus

require 'open3'

p Open3.capture3('cat', stdin_data: 'Hello')

stdout, stderr, status = Open3.capture3('cat >&2', stdin_data: 'Hello')

p stdout
p stderr
p status.exitstatus
