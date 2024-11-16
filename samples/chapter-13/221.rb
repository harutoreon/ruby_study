class Rgb
  def initialize(red, green, blue)
    @red, @green, @blue = red.to_i, green.to_i, blue.to_i
  end

  def hex
    '#' + [@red, @green, @blue].map { _1.to_s(16).rjust(2, '0') }.join
  end
end

RSpec.describe Rgb do
  describe '#hex' do
    let(:rgb) { Rgb.new(204, 52, 45) }

    it 'RGB値の16進数表現を返す' do
      expect(rgb.hex).to eq('#cc342d')
    end

    context 'RGB値のいずれかが1桁の16進数になる時' do
      let(:rgb) { Rgb.new(0, 10, 15) }

      it '2桁になるように0が詰められる' do
        expect(rgb.hex).to eq('#000a0f')
      end
    end

    context 'RGB値のいずれかがnilのとき' do
      let(:rgb) { Rgb.new(255, nil, nil) }

      it 'nilは0とみなされる' do
        expect(rgb.hex).to eq('#ff0000')
      end
    end
  end
end
