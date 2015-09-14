require 'minitest/autorun'
require_relative 'bowling_scorer'

describe BowlingScorer do
  # it 'returns 300 when passed a perfect game' do
  #   BowlingScorer.score('10,10,10,10,10,10,10,10,10,10,10,10').must_equal 300
  # end
  it 'returns 20 when passed 1,2,3,4,5,5' do
    BowlingScorer.score('1,2,3,4,5,5').must_equal 20
  end
  it 'returns 48 when passed 9,1,10,8,0,2' do
    BowlingScorer.score('9,1,10,8,0,2').must_equal 48
  end
  it 'returns 50 when passed 10,0,0,9,1,0,0,8,2,0,0,7,3,0,0,6,4,0,0' do
    BowlingScorer.score('10,0,0,9,1,0,0,8,2,0,0,7,3,0,0,6,4,0,0').must_equal 50
  end
  # it 'returns 83 when passed 4,6,3,1,9,1,10,7,3,2,3,4,5,10,2' do
  #   BowlingScorer.score('4,6,3,1,9,1,10,7,3,2,3,4,5,10,2').must_equal 83
  # end
  it 'returns 12 when passed 1,2,8,1' do
    BowlingScorer.score('1,2,8,1').must_equal 12
  end
  it 'returns 21 when passed 1,2,8,1,9,0' do
    BowlingScorer.score('1,2,8,1,9,0').must_equal 21
  end
end