require 'rails_helper'

RSpec.describe Student, type: :model do
  describe "validations" do
    it "is invalid without Full Name" do
      student = Student.new(name: "")
      student.valid?
      expect(student.errors).to have_key(:name)
    end

    it "is invalid without image" do
      student = Student.new(image_url: "")
      student.valid?
      expect(student.errors).to have_key(:image_url)
    end

  end
end
