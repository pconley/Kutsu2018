require 'rails_helper'

# t.string "text"
# t.string "signature"
# t.string "status"

RSpec.describe Quote, type: :model do

  subject { described_class.new(signature: "a daughter", text: "thanks for the shoes") }

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

  it "is not valid without a signature" do
    subject.signature = nil
    expect(subject).to_not be_valid
    expect(subject.save).to eq(false)
    expect(described_class.count).to eq(0)
  end

end
