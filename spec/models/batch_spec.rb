require 'rails_helper'

RSpec.describe Batch, type: :model do
  describe "validations" do
    it "is invalid without Batch Number" do
      batch = Batch.new(code: "")
      batch.valid?
      expect(batch.errors).to have_key(:code)
    end

    it "is invalid without start date" do
      batch = Batch.new(starts_at: "")
      batch.valid?
      expect(batch.errors).to have_key(:starts_at)
    end

    it "is invalid without end date" do
      batch = Batch.new(ends_at: "")
      batch.valid?
      expect(batch.errors).to have_key(:ends_at)
    end

  end


  describe ".order_by_batch_number" do
  let!(:batch1) { create :batch, code: 3 }
  let!(:batch2) { create :batch, code: 2 }
  let!(:batch3) { create :batch, code: 5 }

  it "returns a sorted array of rooms by prices" do
    # note that they should not come out in the order that they were created
    expect(Batch.order_by_number).to eq([batch2, batch1, batch3])
  end
end



describe "association with batch" do
  let(:batch) { create :batch }

  it "has many students" do
    student = batch.students.build(name: "Serene")

    expect(student.batch).to eq(batch)
  end
  end
end
