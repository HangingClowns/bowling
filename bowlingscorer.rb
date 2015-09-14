class BowlingScorer
  def self.score scores
    numbered_scores = scores.split(',').map(&:to_i)
    new_scores = []
    numbered_scores.each_with_index do |score, i|
      if score == 10 and i+2 < numbered_scores.length # if it's a strike, get the next two ahead
        new_scores << (score + numbered_scores[i+1] + numbered_scores[i+2])
      end
    end
    new_scores.inject :+
  end
end