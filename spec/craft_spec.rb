require './lib/craft'

RSpec.describe Craft do
  let(:craft) { Craft.new('knitting', {yarn: 20, scissors: 1, knitting_needles: 2}) }
  describe '#initialize' do
    it 'exists' do
      expect(craft).to be_a(Craft)
    end

    it 'has a name' do
      expect(craft.name).to eq('knitting')
    end

    it 'has required supplies' do
      expect(craft.supplies_required).to eq({:yarn => 20, :scissors => 1, :knitting_needles => 2})
    end
  end
end