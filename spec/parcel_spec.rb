require 'rspec'
require 'parcel'

describe Parcel do
  describe '#volume' do
    it 'returns 8 for a 2 x 2 x 2 parcel' do
      parcel = Parcel.new(2, 2, 2, 1)
      expect(parcel.volume()).to eq(8)
    end
  end

  describe '#volume_cost' do
    it 'returns the cost at a rate of $1.50/cubic-inch' do
      parcel = Parcel.new(1, 1, 1, 1)
      expect(parcel.volume_cost()).to eq(1.5)
    end

    it 'returns the cost at a rate of $1.50/cubic-inch' do
      parcel = Parcel.new(1, 2, 1, 1)
      expect(parcel.volume_cost()).to eq(3)
    end

    it 'returns the cost at a rate of $1.50/cubic-inch' do
      parcel = Parcel.new(1, 2, 2, 1)
      expect(parcel.volume_cost()).to eq(6)
    end
  end

  describe '#weight_cost' do
    it 'returns the cost at a rate of $1.25/ounce' do
      parcel = Parcel.new(1, 1, 2, 2)
      expect(parcel.weight_cost()).to eq(2.5)
    end

    it 'returns the cost at a rate of $1.25/ounce' do
      parcel = Parcel.new(1, 4, 2, 5)
      expect(parcel.weight_cost()).to eq(6.25)
    end

    it 'returns the cost at a rate of $1.25/ounce' do
      parcel = Parcel.new(1, 1, 2, 10)
      expect(parcel.weight_cost()).to eq(12.5)
    end
  end

  describe '#cost_to_ship' do
    it 'returns the greater cost between volume_cost and weight_cost' do
      parcel = Parcel.new(1, 1, 1, 1)
      expect(parcel.cost_to_ship()).to eq(1.5)
    end

    it 'returns the greater cost between volume_cost and weight_cost' do
      parcel = Parcel.new(1, 2, 1, 5)
      expect(parcel.cost_to_ship()).to eq(6.25)
    end

    it 'returns the greater cost between volume_cost and weight_cost' do
      parcel = Parcel.new(1, 2, 2, 3)
      expect(parcel.cost_to_ship()).to eq(6)
    end
  end
end
