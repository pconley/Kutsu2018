require 'rails_helper'

RSpec.describe Size, type: :model do

  subject { described_class.new(text: "9 1/2") }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
    expect(subject.save!).to eq(true)
    expect(described_class.count).to eq(1)
  end

  it "is not valid without a text" do
    subject.text = nil
    expect(subject).to_not be_valid
    expect(subject.save).to eq(false)
    expect(described_class.count).to eq(0)
  end

  ### VERiFY WE HAVE BOTS

  it "has a basic factory bot" do
    # Returns a User instance that's not saved
    bot = FactoryBot.build(described_class.to_s.downcase.to_sym)
    expect(bot).to be_valid
  end

end
