# このスクリプトを実行するときはコメントアウト部分を削除すること。
# エラーになります。

require 'json'

DATA.each_line(chomp: true) do |user|
  response = `curl -s https://api.github.com/users/#{user}`
  id = JSON.parse(response)['id']
  puts "#{user}: #{id}"
end

__END__
dlwr
kymmt90
shimoju
#=> dlwr: 537424
#   kymmt90: 9291031
#   shimoju: 1928324