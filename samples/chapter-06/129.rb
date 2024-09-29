s = '1 one eins'
m = s.match(/(\d+)\s(\w+)\s(\w+)/)
p m        #=> #<MatchData "1 one eins" 1:"1" 2:"one" 3:"eins">
puts m[0]  #=> 1 one eins
puts m[1]  #=> 1
puts m[2]  #=> one
puts m[3]  #=> eins

s = '1 one eins, 2 two zwei, 3 three drei'
puts s.gsub(/(\d+)\s(\w+)\s(\w+)/, '\3 \2 \1')  #=> eins one 1, zwei two 2, drei three 3

s = '1 one eins'
m = s.match(/(?<number>\d+)\s(?<english>\w+)\s(?<german>\w+)/)
p m               #=> #<MatchData "1 one eins" number:"1" english:"one" german:"eins">
puts m[:number]   #=> 1
puts m[:english]  #=> one
puts m[:german]   #=> eins

s = '1 one eins, 2 two zwei, 3 three drei'
puts s.gsub(/(?<number>\d+)\s(?<english>\w+)\s(?<german>\w+)/, '\k<german> \k<english> \k<number>')
#=> eins one 1, zwei two 2, drei three 3
