require 'rails_helper'

describe "Teacher can see a list of current classes" do

  before { login_as user }

  let(:user) { create :user}


  it "shows the batches details" do
    visit batches_url

    expect(page).to have_text("Batch")
    expect(page).to have_text("Start Date")
    expect(page).to have_text("End Date")

 end



end
