class Student
attr_reader :info_hash, :name, :age, :scores

  def initialize(info_hash)
    @info_hash = info_hash
    @name = info_hash[:name]
    @age = info_hash[:age]
    @scores = []
  end
end
