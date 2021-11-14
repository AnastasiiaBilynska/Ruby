require 'rspec'
require './benefactor'

describe Benefactor do
  benefactor = Benefactor.new
  describe 'when testing newAvg' do
    it 'Should return the expected donation (rounded up to the next integer)' do
      expect(benefactor.new_avg([14, 30, 5, 7, 9, 11, 15], 92)).to eql(645)
    end
    it 'Should return the expected donation (rounded up to the next integer)' do
      expect(benefactor.new_avg([21.5, 322, 54.8, 22, 33.1, 202], 400)).to eql(2145)
    end
    it 'Should return the expected donation (rounded up to the next integer)' do
      expect(benefactor.new_avg([8000, 250, 5, 70, 97, 1010, 15, 224], 10_000)).to eql(80_329)
    end
    it 'Should return the expected donation (rounded up to the next integer)' do
      expect(benefactor.new_avg([1.4, 0.08, 2.5, 2.7, 0.1, 0.45], 1.5)).to eql(4)
    end
    it 'Should return the expected donation (rounded up to the next integer)' do
      expect(benefactor.new_avg([15, 15, 15, 15, 15], 15)).to eql(15)
    end
    it 'Should raise an error' do
      expect { benefactor.new_avg([14, 30, 5, 7, 9, 11, 15], 2) }.to raise_error(RuntimeError)
    end
    it 'Should raise an error' do
      expect { benefactor.new_avg([5, 100, 66, 31, 85, 122, 321, 1], -10) }.to raise_error(RuntimeError)
    end
    it 'Should raise an error' do
      expect { benefactor.new_avg([1444, 30, 555, 7, 900, 11, 1500], 30) }.to raise_error(RuntimeError)
    end
    it 'Should raise an error' do
      expect { benefactor.new_avg([55.5, 20, 3, 777, 49, 151, 125.4], 0) }.to raise_error(RuntimeError)
    end
    it 'Should raise an error)' do
      expect { benefactor.new_avg([1814, 300, 0.5, 71.9, 999, 1.1], 10) }.to raise_error(RuntimeError)
    end
  end
end
