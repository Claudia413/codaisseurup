require 'rails_helper'

describe "Current user viewing the list of events" do
  before { login_as user }
  let(:user) { create :user, email: "current@user.com" }
  let(:another_user) { create :user, email: "another@user.com" }

  let!(:eventA) { create :event, name: "Event 1", user: user }
  let!(:eventB) { create :event, name: "Event 2", user: user }
  let!(:eventC) { create :event, name: "Another users event", user: another_user }

  it "shows all his events" do
    # binding.pry
    visit "events"

    expect(page).to have_text("Event 1")
    expect(page).to have_text("Event 2")
  end

  it "does not show other users events" do
    visit events_url

    expect(page).not_to have_text("Another users event")
  end

end
