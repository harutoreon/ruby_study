class Book
  def initialize(title:, isbn:)
    @title, @isbn = title, isbn.to_s

    if @isbn.delete('-').size != 13
      raise ArgumentError
    end
  end
end

RSpec.describe Book do
  describe '.new' do
    context 'ISBNが13桁ではないとき' do
      it 'ArgumentErrorが発生すること' do
        expect { Book.new(title: 'Pythonコードレシピ集', isbn: '978-297-11861-') }.to raise_error(ArgumentError)
      end
    end

    context 'ISBNが13桁のとき' do
      it '例外は発生しないこと' do
        expect { Book.new(title: 'Pythonコードレシピ集', isbn: '978-4-297-11861-7') }.to_not raise_error
      end
    end
  end
end