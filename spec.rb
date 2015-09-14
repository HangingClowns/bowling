require 'minitest/autorun'
require_relative 'bowlingscorer'

describe BowlingScorer do
  it 'returns 300 when passed a perfect game' do
    BowlingScorer.score('10,10,10,10,10,10,10,10,10,10,10,10').must_equal 300
  end
  it 'returns 20 when passed 1,2,3,4,5,5' do
    BowlingScorer.score('1,2,3,4,5,5').must_equal 20
  end
  it 'returns 48 when passed 9,1,10,8,0,2' do
    BowlingScorer.score('9,1,10,8,0,2').must_equal 48
  end
end