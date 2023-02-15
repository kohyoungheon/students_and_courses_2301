require '../lib/student'

describe Student do
  describe "#initialize" do
    it "is an instance of Student" do
      student = Student.new({name: "Morgan", age: 21})
      expect(student).to be_instance_of(Student)
      expect(student.name).to eq("Morgan")
      expect(student.age).to eq(21)
      expect(student.scores).to eq([])
    end
  end

  describe "#log_score" do
    it "adds the score to the scores array" do
      student = Student.new({name: "Morgan", age: 21})
      expect(student.scores).to eq([])
      student.log_score(89)
      student.log_score(78)
      expect(student.scores).to eq([89,78])
    end
  end

  describe "#grade" do
    it "returns the average of all scores" do
      student = Student.new({name: "Morgan", age: 21})
      student.log_score(89)
      student.log_score(78)
      expect(student.grade).to eq(83.5)
    end
  end
end