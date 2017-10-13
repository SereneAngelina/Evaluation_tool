require 'rails_helper'

describe "Navigating to a particular batch" do
  before { login_as user }

  let(:user) { create :user }
  let!(:batch) { create :batch }

  it "allows navigation from the batches to a particular batch" do
    visit batches_url(batch)



    expect(current_path).to eq(batches_path(batch))
  end
end
