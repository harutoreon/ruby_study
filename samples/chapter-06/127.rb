s = 'Lorem ipsum dolor sit amet'
puts s.gsub(/ /, '')   #=> Loremipsumdolorsitamet
puts s                 #=> Lorem ipsum dolor sit amet
puts s.gsub!(/ /, '')  #=> Loremipsumdolorsitamet
puts s                 #=> Loremipsumdolorsitamet
