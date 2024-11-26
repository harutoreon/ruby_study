require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'gimei'
end

puts Gimei.name  #=> 松村 佳樹
