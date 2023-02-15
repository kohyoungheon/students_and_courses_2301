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
end