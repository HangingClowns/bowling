class BowlingScorer
  def self.score scores
    numbered_scores = scores.split(',').map(&:to_i)
    new_scores = []
    numbered_scores.each_with_index do |score, i|
      if i+2 < numbered_scores.length and score == 10 # if it's a strike, get the next two ahead
        new_scores << (score + numbered_scores[i+1] + numbered_scores[i+2])
        # if it's a spare, just add the second score, cause you only get the second score from a spare
      elsif i+2 < numbered_scores.length and score + numbered_scores[+1] == 10 
        new_scores << (score + numbered_scores[i+2])
      elsif score != 10 # otherwise, just add the number
        new_scores << score
      end
    end
    new_scores.inject :+
  end
end