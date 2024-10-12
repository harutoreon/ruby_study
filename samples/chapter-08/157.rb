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

  def respond_to_missing?(symbol, include_private)
    # 呼び出すメソッドの名前がレスポンスのハッシュに存在すれば、そのメソッドが存在するとみなす
    @response.has_key?(symbol) ? true : super
  end
end

json = Net::HTTP.get(URI.parse("https://api.github.com/users/pepabo"))
resource = Resource.new(json)

puts resource.respond_to?(:login)      #=> true
puts resource.login                    #=> pepabo
puts resource.respond_to?(:not_exist)  #=> false
