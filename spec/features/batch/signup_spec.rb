require 'rails_helper'

describe "Teacher should be registered before login" do

 let(:user) { create :user }

  it "shows the student details" do
    visit batches_url

    expect(page).to have_text("You need to sign in or sign up before continuing.")
end
end
