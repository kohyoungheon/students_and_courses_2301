class Gradebook
  attr_reader :instructor, :courses

  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def list_all_students
    student_hash = {}
    @courses.each do |course|
      student_hash[course] = course.students
    end
    student_hash
  end

  def students_below(threshold)
    @courses.@students
  end
end
