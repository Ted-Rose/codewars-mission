# https://www.codewars.com/kata/5962bbea6878a381ed000036

class HighScoreTable
  attr_reader :scores

  def initialize(max_scores)
    @max_scores = max_scores
    @scores = []
  end

  def update(score)
    if @scores.count < @max_scores
      @scores << (score)
    else
      smallest_score = @scores.min
      if smallest_score < score
        smallest_score_index = @scores.index(smallest_score)
        @scores.delete_at(smallest_score_index)
        @scores.append(score)
      end
    end
    @scores.sort!.reverse!
  end

  def reset
    @scores.clear
  end
end

# highScoreTable = HighScoreTable.new(3)
# pp highScoreTable.scores
# highScoreTable.update(10)
# pp highScoreTable.scores
# highScoreTable.update(8)
# highScoreTable.update(12)
# highScoreTable.update(5)
# highScoreTable.update(10)
# pp highScoreTable.scores
# highScoreTable.reset()
# pp highScoreTable.scores
