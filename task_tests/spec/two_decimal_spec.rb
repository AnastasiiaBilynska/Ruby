require 'rspec'
require './two_decimal'

describe Num do
  subject { Num.new }
  context 'testing two_decimal_places' do
    context 'return given number rounded to two decimal places' do
      let(:num) { 0.5697445587458 }
      let(:expectation) { 0.57 }
      it { expect(subject.two_decimal_places(num)).to eql(expectation) }
    end
    context 'return given number rounded to two decimal places' do
      let(:num) { 1_222_222_222.77711111112 }
      let(:expectation) { 1_222_222_222.78 }
      it { expect(subject.two_decimal_places(num)).to eql(expectation) }
    end
    context 'return given number rounded to two decimal places' do
      let(:num) { -20.4327598745 }
      let(:expectation) { -20.43 }
      it { expect(subject.two_decimal_places(num)).to eql(expectation) }
    end
    context 'return given number rounded to two decimal places' do
      let(:num) { 122.5555555555555 }
      let(:expectation) { 122.56 }
      it { expect(subject.two_decimal_places(num)).to eql(expectation) }
    end
    context 'return given number rounded to two decimal places' do
      let(:num) { 7.34755888445 }
      let(:expectation) { 7.35 }
      it { expect(subject.two_decimal_places(num)).to eql(expectation) }
    end
    context 'return given number rounded to two decimal places' do
      let(:num) { -355_555_555.12711111112 }
      let(:expectation) { -355_555_555.13 }
      it { expect(subject.two_decimal_places(num)).to eql(expectation) }
    end
    context 'return given number rounded to two decimal places' do
      let(:num) { -1.11111111111119 }
      let(:expectation) { -1.11 }
      it { expect(subject.two_decimal_places(num)).to eql(expectation) }
    end
    context 'return given number rounded to two decimal places' do
      let(:num) { 5.9244444444445 }
      let(:expectation) { 5.92 }
      it { expect(subject.two_decimal_places(num)).to eql(expectation) }
    end
    context 'return given number rounded to two decimal places' do
      let(:num) { 5.00000001 }
      let(:expectation) { 5.00 }
      it { expect(subject.two_decimal_places(num)).to eql(expectation) }
    end
    context 'return given number rounded to two decimal places' do
      let(:num) { 5.9999999 }
      let(:expectation) { 6.00 }
      it { expect(subject.two_decimal_places(num)).to eql(expectation) }
    end
  end
end
