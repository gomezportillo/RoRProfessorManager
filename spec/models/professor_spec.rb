require 'rails_helper'

RSpec.describe Professor, type: :model do
  subject { Professor.new }

  it "is valid with valid attributes" do
    subject.name = "Name"
    subject.area = "Area"
    expect(subject).to be_valid
  end

  it "is not valid with invalid attributes" do
    expect(subject).not_to be_valid
  end

  it "has no subjects" do
    expect(subject.subjects).to be_empty
  end

  it "has no students" do
    expect(subject.students).to be_empty
  end
  
end
