RSpec.describe String do
  describe '#reverse' do
    it 'returns a new string in reverse order' do
      string = 'String'
      expect(string.reverse).to eq('gnirtS')
    end

    it 'returns ginrtS' do
      string = 'String'
      expect(string.reverse).to_not eq('ginrtS')
    end
  end
end
