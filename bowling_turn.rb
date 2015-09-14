class BowlingTurn
  def self.turns(scores)
    numbered_scores = scores.split(',').map(&:to_i)
    i = 0
    turns = []
    while i < numbered_scores.size do
      if numbered_scores[i] == 10
        turns << BowlingTurn.new([10])
        i += 1
        next
      end
      if i + 1 < numbered_scores.size
        turns << BowlingTurn.new([numbered_scores[i], numbered_scores[i+1]])
        i += 2
      else
        turns << BowlingTurn.new([numbered_scores[i]])
        i += 1
      end
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
  
  def spare?
    @scores.size == 2 && @scores.inject(:+) == 10
  end
  
  def first_score
    @scores.first
  end
end