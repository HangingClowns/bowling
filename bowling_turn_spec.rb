require 'minitest/autorun'
require_relative 'bowling_turn'

describe BowlingTurn do
  describe 'class' do
    describe 'parse' do
      it 'should parse properly if there is an odd number' do
        turns = BowlingTurn.turns '1,2,4'
        turns.size.must_equal 2
        turns[0].score.must_equal 3
        turns[1].score.must_equal 4
      end
      it 'should parse properly if there is a 10 in between' do
        turns = BowlingTurn.turns '1,2,10,4'
        turns.size.must_equal 3
        turns[0].score.must_equal 3
        turns[1].score.must_equal 10
        turns[1].strike?.must_equal true
        turns[2].score.must_equal 4
      end
      it 'should parse out a perfect game correctly' do
        turns = BowlingTurn.turns '10,10,10,10,10,10,10,10,10,10,10,10'
        turns.size.must_equal 10
        turns[3].score.must_equal 10
        turns[9].score.must_equal 30
      end
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
    describe 'spare?' do
      it 'should be able to tell if it is a strike' do
        turn = BowlingTurn.new [10]
        turn.spare?.must_equal false
      end
      it 'should be able to tell if it is not a strike' do
        turn = BowlingTurn.new [8,2]
        turn.spare?.must_equal true
      end
    end
    describe 'first_score' do
      it 'should return the first score instead of the entire sum' do
        turn = BowlingTurn.new [8,2]
        turn.first_score.must_equal 8
      end
    end
  end
end