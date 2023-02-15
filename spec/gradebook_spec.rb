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
end