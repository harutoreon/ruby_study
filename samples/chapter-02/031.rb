CONST = '定数です'
p CONST

CONST = 2
p CONST

class MyClass
  VERSION = '1.0.0'
end
p MyClass::VERSION

class MyClass
  VERSION = '1.0.0'
  private_constant :VERSION

  def self.version
    VERSION
  end
end

begin
  MyClass::VERSION
rescue => e
  p e
end

p MyClass.version