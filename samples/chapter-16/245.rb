require 'redcarpet'

doc = <<MD
# Rubyコードレシピ集

- 基本
- 応用

[RubyのWebページ](https://www.ruby-lang.org/ja/)

Rubyは*楽しい*ですね！
MD

markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
puts markdown.render(doc)
#=> <h1>Rubyコードレシピ集</h1>
#
#   <ul>
#   <li>基本</li>
#   <li>応用</li>
#   </ul>
#
#   <p><a href="https://www.ruby-lang.org/ja/">RubyのWebページ</a></p>
#
#   <p>Rubyは<em>楽しい</em>ですね！</p>
