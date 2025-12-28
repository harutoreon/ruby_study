require 'net/http'
require 'rss'

response = Net::HTTP.get(URI.parse('https://www.ruby-lang.org/ja/feeds/news.rss'))
feed = RSS::Parser.parse(response)

puts feed.channel.title  #=> ruby-langの最新ニュース

feed.channel.items.each do |item|
  puts item.title
end
#=> Ruby 4.0.0 リリース
#   サイトのアイデンティティの再設計
#   Ruby 4.0.0 preview3 リリース
#   Ruby 4.0.0 preview2 リリース
#   RubyGemsリポジトリ所有権の移行
#   CVE-2025-43857: net-imap gem のDoS脆弱性
#   Ruby 3.5.0 preview1 リリース
#   Ruby 3.4.3 リリース
#   Ruby 3.3.8 リリース
#   Ruby 3.2.8 リリース
