require '../lib/student'
require '../lib/course'

describe Course do
  describe "#initialize do" do
    it "is an instance of Course" do
      course = Course.new("Calculus", 2)
      expect(course).to be_instance_of(Course)
      expect(course.name).to eq("Calculus")
      expect(course.capacity).to eq(2)
    end
  end
end