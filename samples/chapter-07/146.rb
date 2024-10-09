module My
  CONST = 'My::CONST定数'

  class File
    def initialize
      puts 'My::Fileクラス'
    end
  end
end

puts My::CONST  #=> My::CONST定数
My::File.new    #=> My::Fileクラス
