class Foo
  attr_reader :n

  def initialize(n)
    @n = n
  end

  def add_one_three_times
    3.times do
      binding.irb
      @n += 1
    end
  end
end

foo = Foo.new(1)
foo.add_one_three_times
p foo.n
