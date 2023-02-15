require '../lib/student'
require '../lib/course'
require '../lib/gradebook'

describe Gradebook do
  describe "#initialize" do
    it "is an instance of Gradebook" do
      gradebook = Gradebook.new("Mr.Geralt")
      expect(gradebook).to be_instance_of(Gradebook)
      expect(gradebook.instructor).to eq("Mr.Geralt")
      expect(gradebook.courses).to eq([])
    end
  end

  describe "#add_course" do
    it "adds courses to gradebook" do
      course = Course.new("Calculus", 2)
      gradebook = Gradebook.new("Mr.Geralt")

      expect(gradebook.courses).to eq([])
      gradebook.add_course(course)
      expect(gradebook.courses).to eq([course])
    end
  end

  describe "#list_all_students" do
    it "lists all students in all courses" do
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})
      student3 = Student.new({name: "Mike", age: 25})
      course = Course.new("Calculus", 2)
      course2 = Course.new("Chemistry", 2)
      gradebook = Gradebook.new("Mr.Geralt")

      course.enroll(student1)
      course.enroll(student2)
      course2.enroll(student2)
      course2.enroll(student3)
      gradebook.add_course(course)
      gradebook.add_course(course2)
      expect(gradebook.list_all_students).to eq({course=>[student1, student2], course2=>[student2, student3]})
    end
  end
  describe "#students_below" do
    it "lists all students below threshold" do
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Brandon", age: 29})
      student3 = Student.new({name: "Mike", age: 22})
      student4 = Student.new({name: "Jorge", age: 26})
      student1.log_score(89)
      student1.log_score(88)
      student2.log_score(40)
      student2.log_score(30)
      student3.log_score(50)
      student3.log_score(20)
      student4.log_score(99)
      student4.log_score(95)
      course = Course.new("Calculus", 2)
      course2 = Course.new("Chemistry", 2)
      course.enroll(student1)
      course.enroll(student2)
      course2.enroll(student3)
      course2.enroll(student4)
      gradebook = Gradebook.new("Mr.Geralt")
      gradebook.add_course(course)
      gradebook.add_course(course2)

      expect(gradebook.students_below(80)).to be_instance_of(Array)
      expect(gradebook.students_below(80)).to eq([student2, student3])

    end
  end
end