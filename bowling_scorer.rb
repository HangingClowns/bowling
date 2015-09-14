require_relative 'bowling_turn'

class BowlingScorer
  def self.score scores_list
    turns = BowlingTurn.turns scores_list
    new_scores = []
    turns.each_with_index do |turn, i|
      if i+2 < turns.size && turn.strike? # if it's a strike, get the next two ahead
        new_scores << (turn.score + turns[i+1].score)
        # if it's a spare, just add the second score, cause you only get the first score from a spare
        # puts "strike!: #{turn}"
      elsif i+1 < turns.size and turn.spare?
        new_scores << (turn.score + turns[i+1].first_score)
        # puts "spare!: #{turn}"
      else #turn.score = 10 # otherwise, just add the number
        # puts "other!: #{turn}"
        new_scores << turn.score
      end
    end
    # puts turns.inspect
    # puts new_scores.inspect
    new_scores.inject :+
  end
end