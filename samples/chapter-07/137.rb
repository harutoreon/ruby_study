class Foo
  def self.foo
    puts 'fooの呼び出し'
  end

  private_class_method :foo

  def self.bar
    foo
  end
end

Foo.bar  #=> fooの呼び出し

begin
  Foo.foo
rescue => e
  p e
end
#=> #<NoMethodError: private method `foo' called for class Foo>
