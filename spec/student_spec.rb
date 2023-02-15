require '../lib/student'

describe Student do
  describe "#initialize" do
    it "is an instance of Student" do
      student = Student.new({name: "Morgan", age: 21})
      expect(student.name).to eq("Morgan")
      expect(student.age).to eq(21)
      expect(student.scores).to eq([])
    end
  end
end