require 'minitest/autorun'
require_relative 'bowlingscorer'

describe BowlingScorer do
  it 'returns 300 when passed a perfect game' do
    BowlingScorer.score('10,10,10,10,10,10,10,10,10,10,10,10').must_equal 300
  end
end