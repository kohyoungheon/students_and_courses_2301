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

  def students_below(threshold) #return array of student objects
    student_array = []
    @courses.each do |course|
      course.students.each do |student|
        if student.grade < threshold
          student_array << student
        end
      end
    end
    student_array
  end
end
