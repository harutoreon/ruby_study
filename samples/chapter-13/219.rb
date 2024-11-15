class Calc
  def calculate
    heavy_operation
  end

  def heavy_operation
    sleep(3)
  end
end

RSpec.describe Calc do
  describe '#calc' do
    let(:calc) { Calc.new }

    it 'heavy_operationメソッドが呼び出されるか' do
      expect(calc).to receive(:heavy_operation)
      calc.calculate
    end
  end

  describe '#calc' do
    let(:calc) { Calc.new }

    before do
      allow(calc).to receive(:heavy_operation).and_return(3)
    end

    it 'heavy_operationメソッドが呼び出される' do
      calc.calculate
      expect(calc).to have_received(:heavy_operation)
    end
  end
end