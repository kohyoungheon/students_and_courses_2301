class Student
attr_reader :info_hash, :name, :age, :scores

  def initialize(info_hash)
    @info_hash = info_hash
    @name = info_hash[:name]
    @age = info_hash[:age]
    @scores = []
  end
  
  def log_score(score)
    @scores << score
  end

  def grade
    total_sum = @scores.sum.to_f
    average = total_sum / @scores.length
  end
end
