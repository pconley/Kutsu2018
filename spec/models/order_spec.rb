require 'rails_helper'

RSpec.describe Order, type: :model do

  agent = FactoryBot.build(:agent)

  subject { described_class.new(agent: agent, style: 'required', description: "one odd shoe please") }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
    expect(subject.save!).to eq(true)
    expect(described_class.count).to eq(1)
  end

  # it "is not valid without a email" do
  #   subject.email = nil
  #   expect(subject).to_not be_valid
  #   expect(subject.save).to eq(false)
  #   expect(described_class.count).to eq(0)
  # end

  # it "is not valid without a password" do
  #   subject.password = nil
  #   expect(subject).to_not be_valid
  #   expect(subject.save).to eq(false)
  #   expect(described_class.count).to eq(0)
  # end

  ### VERiFY WE HAVE BOTS

  it "has a basic factory bot" do
    # Returns a User instance that's not saved
    order = FactoryBot.build(:order)
    expect(order).to be_valid
  end

end