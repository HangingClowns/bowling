require 'minitest/autorun'
require_relative 'bowling_turn'

describe BowlingTurn do
  describe 'class' do
    describe 'parse' do
      turns = BowlingTurn.turns '1,2,4'
      turns.wont_be_nil
      turns.size.must_equal 2
      # turns[0].score.must_equal 3
      # turns[1].score.must_equal 4
    end
  end
  describe 'instance' do
    describe 'strike?' do
      it 'should be able to tell if it is a strike' do
        turn = BowlingTurn.new [10]
        turn.strike?.must_equal true
      end
      it 'should be able to tell if it is not a strike' do
        turn = BowlingTurn.new [8,2]
        turn.strike?.must_equal false
      end
    end
  end
end