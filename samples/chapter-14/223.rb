p 1                             #=> 1
p "Ruby"                        #=> "Ruby"
p [1, "Ruby", :s]               #=> [1, "Ruby", :s]
p ({ a: 'a', b: "b", c: "c" })  #=> {:a=>"a", :b=>"b", :c=>"c"}

class MyClass
  def initialize(a, b)
    @a, @b = a, b
  end
end

p MyClass.new(:foo, :bar)  #=> #<MyClass:0x00000001020acd70 @a=:foo, @b=:bar>

pp [{ a: "a", b: "b", c: "c" }, { d: "d", e: "e", f: "f" }, { g: "g", h: "h", i: "i" }]

class MyClass
  def initialize(a, b, c, d, e)
    @a, @b, @c, @d, @e = a, b, c, d, e
  end
end

pp MyClass.new(:foo, :bar, :baz, :fizz, :buzz)
