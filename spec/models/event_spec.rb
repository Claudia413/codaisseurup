require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_length_of(:description).is_at_most(500) }
  end

  describe "association with registration" do
    let(:guest_user) { create :user, email: "guest@user.com" }
    let(:host_user) { create :user, email: "host@user.com" }

    let!(:event) { create :event, user: host_user }
    let!(:registration) { create :registration, event: event, user: guest_user }

    it "has guests" do
      expect(event.guests).to include(guest_user)
    end
  end

  describe "#bargain?" do
      let(:bargain_event) { create :event, price: 2 }
      let(:non_bargain_event) { create :event, price: 200 }

      it "returns true if the price is smaller than 5 EUR" do
        expect(bargain_event.bargain?).to eq(true)
        expect(non_bargain_event.bargain?).to eq(false)
      end
  end

  describe ".order_by_price" do
      let!(:event1) { create :event, price: 100 }
      let!(:event2) { create :event, price: 300 }
      let!(:event3) { create :event, price: 200 }

      it "returns a sorted array of events by prices" do
        expect(Event.order_by_price).to match_array [event1, event2, event3]
      end
  end

  describe "association with user" do
    let(:user) { create :user }

    it "belongs to a user" do
      event = user.events.new(name: "Testing belongs to")

      expect(event.user).to eq(user)
    end
  end

  describe "association with subject" do
    let(:event) { create :event }

    let(:subject1) { create :subject, name: "Bootstrap", events: [event] }
    let(:subject2) { create :subject, name: "HTML", events: [event] }
    let(:subject3) { create :subject, name: "Ruby", events: [event] }

    it "has subjects" do
      expect(event.subjects).to include(subject1)
      expect(event.subjects).to include(subject2)
      expect(event.subjects).to include(subject3)
    end
  end

end
