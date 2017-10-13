require 'rails_helper'

describe "Navigating Student Evaluation" do
  before { login_as user }

  let!(:user) { create :user}


  it "allows navigation to all the Batches" do
    visit batches_url

    click_link "Student Evaluation"

    expect(current_path).to eq(batches_path)
  end
end
