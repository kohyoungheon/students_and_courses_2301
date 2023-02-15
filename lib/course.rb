class Course
  attr_reader :name, :capacity, :students

  def initialize(name,capacity)
    @name = name
    @capacity = capacity
    @students = []
  end

  def full?
    if @students.length == @capacity
      return true
    end
    false
  end

  def enroll(student)
    if self.full? == false
      @students << student
    else
      return "This class has #{@students.length}/#{@capacity} students"
    end
  end
end
