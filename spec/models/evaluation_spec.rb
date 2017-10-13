require 'rails_helper'

RSpec.describe Evaluation, type: :model do
  describe "validations" do


    it "is invalid without color code" do
      evaluation = Evaluation.new(color_code: "")
      evaluation.valid?
      expect(evaluation.errors).to have_key(:color_code)
    end

    it "is invalid without remarks" do
      evaluation = Evaluation.new(remarks: "")
      evaluation.valid?
      expect(evaluation.errors).to have_key(:remarks)
    end

  end
end
