require 'debug'

class Foo
  class Error < StandardError; end

  def initialize(n)
    @n = n
    @@m = 1
  end

  def add_one_three_times
    3.times do
      debugger
      @n = @n + 1
    end

    raise Error
  end
end

foo = Foo.new(1)
foo.add_one_three_times
