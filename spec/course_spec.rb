require '../lib/student'
require '../lib/course'

describe Course do
  describe "#initialize do" do
    it "is an instance of Course" do
      course = Course.new("Calculus", 2)
      expect(course).to be_instance_of(Course)
      expect(course.name).to eq("Calculus")
      expect(course.capacity).to eq(2)
      expect(course.students).to eq([])
    end
  end

  describe '#full?' do
    it "returns a boolean whether the course is at capacity." do
      course = Course.new("Calculus", 2)
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})
      expect(course.students).to eq([])
      expect(course.full?).to eq(false)
      course.enroll(student1)
      course.enroll(student2)
      expect(course.full?).to eq(true)
    end
  end

  describe "#enroll" do
    it "enrolls a student in a course" do
      course = Course.new("Calculus", 2)
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})
      student3 = Student.new({name: "Mike", age: 25})

      expect(course.students).to eq([])
      course.enroll(student1)
      course.enroll(student2)
      expect(course.students).to eq([student1, student2])
      expect(course.enroll(student3)).to eq("This class has 2/2 students")
      expect(course.full?).to eq(true)
    end
  end
end