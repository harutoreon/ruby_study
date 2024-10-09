class Foo
  @foo = 'デフォルトのクラスインスタンス変数'

  def self.settings
    { foo: @foo }
  end

  def self.update_settings
    @foo = '更新されたクラスインスタンス変数'
  end
end

class Bar < Foo
end

p Foo.settings  #=> {:foo=>"デフォルトのクラスインスタンス変数"}

Foo.update_settings
p Foo.settings  #=> {:foo=>"更新されたクラスインスタンス変数"}
p Bar.settings  #=> {:foo=>nil}
