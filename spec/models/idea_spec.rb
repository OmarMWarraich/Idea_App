require "rails_helper"

RSpec.describe Idea, type: :model do
    it "has a name" do
        idea = Idea.create!(name: "My Awesome New Idea")
        # expect(idea.name).to eq("My Awesome New Idea")
        second_idea = Idea.create!(name: "My Second Awesome New Idea")
        expect(second_idea.name).to eq("My Second Awesome New Idea")
    end

    it "has a description" do
        idea = Idea.create!(name: "My Awesome New Idea", description: "This is a description")
        expect(idea.description).to eq("This is a description")
    end

    describe "associations" do
        it { is_expected.to have_many(:comments).dependent(:destroy) }
    end

    describe "validations" do
        it { is_expected.to validate_presence_of(:name) }
        it { is_expected.to validate_length_of(:name).is_at_least(3).is_at_most(100) }
    end
end