require 'rspec'
require 'parcel'

describe Parcel do
  describe '#volume' do
    it 'returns 8 for a 2 x 2 x 2 parcel' do
      parcel = Parcel.new(2, 2, 2, 1)
      expect(parcel.volume()).to eq(8)
    end
  end
end
