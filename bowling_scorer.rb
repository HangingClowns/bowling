require_relative 'bowling_turn'

class BowlingScorer
  def self.score scores_list
    turns = BowlingTurn.turns scores_list
    new_scores = []
    turns.each_with_index do |turn, i|
      if i+1 < turns.size && turn.strike? # if it's a strike, get the next two ahead
        if i+2 < turns.size && turns[i+1].strike?
          new_scores << (turn.score + turns[i+1].score + turns[i+2].first_score)
        else
          new_scores << (turn.score + turns[i+1].score)
        end
        # if it's a spare, just add the second score, cause you only get the first score from a spare
        # puts "strike!: #{turn.inspect}"
      elsif i+1 < turns.size && turn.spare?
        new_scores << (turn.score + turns[i+1].first_score)
        # puts "spare!: #{turn.inspect}"
      else #turn.score = 10 # otherwise, just add the number
        # puts "other!: #{turn.inspect}"
        new_scores << turn.score
      end
    end
    # puts turns.inspect
    puts new_scores.inspect
    new_scores.inject :+
  end
end