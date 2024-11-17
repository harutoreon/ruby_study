require './book'

RSpec.describe Book do
  describe '#full_title' do
    let(:book) do
      Book.new(title: 'Ruby Book', author: 'Matz', publisher: 'Gihyo')
    end

    it 'タイトル、著者、出版社を含む文字列を返す' do
      expect(book.full_title).to eq('Matz「Ruby Book」Gihyo')
    end
  end
end
