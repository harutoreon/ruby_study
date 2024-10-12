require 'net/http'
require 'json'

class Resource
  def initialize(response)
    # キーをシンボルにしてレスポンスJSONをハッシュへ変換
    @response = JSON.parse(response, symbolize_names: true)
  end

  def method_missing(name, *args)
    # 呼び出したメソッドの名前がレスポンスのハッシュに存在すれば、その値を返す
    if @response.has_key?(name)
      @response[name]
    else
      super
    end
  end
end

json = Net::HTTP.get(URI.parse("https://api.github.com/users/pepabo"))
resource = Resource.new(json)

puts resource.login  #=> pepabo
puts resource.name   #=> GMO Pepabo, Inc.
puts resource.type   #=> Organization
