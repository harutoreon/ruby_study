module AttributeCapitalizer
  def attr_capitalizer(*attributes)
    attributes.each do |attribute|
      # 文字列の先頭を大文字にできない場合は対応しない
      next unless attribute.respond_to?(:capitalize)

      # 文字列の先頭を大文字にして返す新たなメソッドを動的に定義する
      define_method "capitalized_#{attribute.to_s}" do
        original_result = send(attribute)
        original_result.split(' ').map(&:capitalize).join(' ')
      end
    end
  end
end

class Book
  extend AttributeCapitalizer
  attr_reader :title, :author

  # attr_readerで定義したtitleとauthorの名前を渡して、新しいメソッドを動的に定義する
  attr_capitalizer :title, :author

  def initialize(title:, author:)
    @title = title
    @author = author
  end
end

book = Book.new(title: 'the ruby programming language', author: 'matz')
puts book.capitalized_title   #=> The Ruby Programming Language
puts book.capitalized_author  #=> Matz
