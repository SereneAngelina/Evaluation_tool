require 'rails_helper'

describe "shared/_navbar.html.erb" do
  before { sign_in user }

  context "user has signed in" do
    let(:user) { create :user }

    it "renders email" do
      render
      expect(rendered).to have_content user.email
    end
  end
end
