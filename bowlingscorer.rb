class BowlingScorer
  def self.score scores
    scores.split(',').map(&:to_i).inject(:+)
  end
end