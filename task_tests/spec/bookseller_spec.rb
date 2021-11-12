require 'rspec'
require './bookseller'

describe Bookseller do
  bookseller = Bookseller.new
  describe 'when testing stockList' do
    it 'Should return a string with category and sum of the books' do
      expect(bookseller.stockList(['AVFG 100', 'GHJU 500', 'AVGH 200', 'BBQM 510'],
                                  %w[A B])).to eql('(A : 300) - (B : 510)')
    end
    it 'Should return a string with category and sum of the books' do
      expect(bookseller.stockList(['SAHZ 18', 'ZJFL -230', 'ZZZZ -270', 'OBHN 510'], ['Z'])).to eql('(Z : -500)')
    end
    it 'Should return a string with category and sum of the books' do
      expect(bookseller.stockList(['HGTF 18', 'KJFF 230', 'DFGG 270', 'KIHN 510'], ['K'])).to eql('(K : 740)')
    end
    it 'Should return a string with category and sum of the books' do
      expect(bookseller.stockList(['AVFG 100', 'GHJU 500', 'FGDJ 10', 'AVGH 200', 'BBQM 510'],
                                  %w[G F])).to eql('(G : 500) - (F : 10)')
    end
    it 'Should return a string with category and sum of the books' do
      expect(bookseller.stockList(['PVFG 1325', 'HJGU 500', 'IIDJ 10'], %w[P F])).to eql('(P : 1325) - (F : 0)')
    end
    it 'Should return a string with category and sum of the books' do
      expect(bookseller.stockList(['JGJF 100008', 'JJFJ 230', 'DFGG -200', 'DISN 510'],
                                  %w[J D])).to eql('(J : 100238) - (D : 310)')
    end
    it 'Should return a string with category and sum of the books' do
      expect(bookseller.stockList(['PVFG 1325', 'HJGU 500', 'PPPG 75', 'IIDJ 10'],
                                  %w[P H I])).to eql('(P : 1400) - (H : 500) - (I : 10)')
    end
    it 'Should return a string with category and sum of the books' do
      expect(bookseller.stockList(['PVFG 333', 'HJGU 245', 'AFFH 888', 'BGFD 220', 'CBVG 11', 'PPPG 81', 'IIDJ 10'],
                                  %w[A B C P H
                                     I])).to eql('(A : 888) - (B : 220) - (C : 11) - (P : 414) - (H : 245) - (I : 10)')
    end
    it 'Should return empty string if argument is empty array' do
      expect(bookseller.stockList([], %w[A D])).to eql('')
    end
    it 'Should return empty string if argument is empty array' do
      expect(bookseller.stockList(['GFFD 200', 'GHHH 500'], [])).to eql('')
    end
  end
end
