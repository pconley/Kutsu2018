require 'rails_helper'

RSpec.describe Agent, type: :model do

  subject { described_class.new(email: "xxx@xxx.xxx", password: "password") }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
    expect(subject.save!).to eq(true)
    expect(described_class.count).to eq(1)
  end

  it "is not valid without a email" do
    subject.email = nil
    expect(subject).to_not be_valid
    expect(subject.save).to eq(false)
    expect(described_class.count).to eq(0)
  end

  it "is not valid without a password" do
    subject.password = nil
    expect(subject).to_not be_valid
    expect(subject.save).to eq(false)
    expect(described_class.count).to eq(0)
  end

  ### VERiFY WE HAVE BOTS

  it "has a basic factory bot" do
    # Returns a User instance that's not saved
    agent = FactoryBot.build(:agent)
    expect(agent).to be_valid
  end


# # Returns a saved User instance
# agent = create(:agent)

# # Returns a hash of attributes that can be used to build a User instance
# attrs = attributes_for(:agent)

# # Returns an object with all defined attributes stubbed out
# stub = build_stubbed(:agent)

# # Passing a block to any of the methods above will yield the return object
# create(:agent) do |agent|
#   agent.posts.create(attributes_for(:post))
# end

end
