class BowlingTurn
  def self.turns scores
    numbered_scores = scores.split(',').map(&:to_i)
    i = 0
    turns = []
    while i < numbered_scores.size do
      turns << BowlingTurn.new([numbered_scores[i], numbered_scores[i+1]])
      i += 2
    end
    turns
  end
  
  def initialize scores
    @scores = scores
  end
  
  def score
    @scores.inject :+
  end
  
  def strike?
    @scores.size == 1 && @scores.first == 10
  end
end