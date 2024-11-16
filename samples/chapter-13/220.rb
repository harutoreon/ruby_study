class Counter
  @count = 0

  def self.count
    @count
  end

  def self.increment
    @count += 1
  end

  def self.reset
    @count = 0
  end
end

require 'spec_helper'

RSpec.describe Counter do
  after { Counter.reset }

  describe '.increment' do
    context '1回実行したとき' do
      before do
        Counter.increment
      end

      it 'カウントは1になる' do
        expect(Counter.count).to eq(1)
      end
    end

    context '2回実行したとき' do
      before do
        Counter.increment
        Counter.increment
      end

      it 'カウントは2になる' do
        expect(Counter.count).to eq(2)
      end
    end
  end
end
