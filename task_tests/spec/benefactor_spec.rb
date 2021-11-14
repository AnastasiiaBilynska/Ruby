require 'rspec'
require './benefactor'

describe Benefactor do
  subject { Benefactor.new }
  context 'when testing newAvg' do
    context 'return the expected donation' do
      let(:args) { [[14, 30, 5, 7, 9, 11, 15], 92] }
      let(:expectation) { 645 }
      it { expect(subject.new_avg(*args)).to eql(expectation) }
    end
    context 'return the expected donation' do
      let(:args) { [[21.5, 322, 54.8, 22, 33.1, 202], 400] }
      let(:expectation) { 2145 }
      it { expect(subject.new_avg(*args)).to eql(expectation) }
    end
    context 'return the expected donation' do
      let(:args) { [[8000, 250, 5, 70, 97, 1010, 15, 224], 10_000] }
      let(:expectation) { 80_329 }
      it { expect(subject.new_avg(*args)).to eql(expectation) }
    end
    context 'return the expected donation' do
      let(:args) { [[1.4, 0.08, 2.5, 2.7, 0.1, 0.45], 1.5] }
      let(:expectation) { 4 }
      it { expect(subject.new_avg(*args)).to eql(expectation) }
    end
    context 'return the expected donation' do
      let(:args) { [[15, 15, 15, 15, 15], 15] }
      let(:expectation) { 15 }
      it { expect(subject.new_avg(*args)).to eql(expectation) }
    end
    context 'raise an error' do
      let(:args) { [[14, 30, 5, 7, 9, 11, 15], 2] }
      it { expect { subject.new_avg(*args) }.to raise_error }
    end
    context 'raise an error' do
      let(:args) { [[5, 100, 66, 31, 85, 122, 321, 1], -10] }
      it { expect { subject.new_avg(*args) }.to raise_error }
    end
    context 'raise an error' do
      let(:args) { [[1444, 30, 555, 7, 900, 11, 1500], 30] }
      it { expect { subject.new_avg(*args) }.to raise_error }
    end
    context 'raise an error' do
      let(:args) { [[55.5, 20, 3, 777, 49, 151, 125.4], 0] }
      it { expect { subject.new_avg(*args) }.to raise_error }
    end
    context 'raise an error' do
      let(:args) { [[1814, 300, 0.5, 71.9, 999, 1.1], 10] }
      it { expect { subject.new_avg(*args) }.to raise_error }
    end
  end
end
