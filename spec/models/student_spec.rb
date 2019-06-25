require 'rails_helper'

RSpec.describe Student, type: :model do
  subject { Student.new }

  it "is valid with valid attributes" do
    subject.name = "Name"
    subject.avg_mark = 8
    expect(subject).to be_valid
  end

  it "is not valid with invalid attributes" do
    expect(subject).not_to be_valid
  end

  it "has no subjects" do
    expect(subject.subjects).to be_empty
  end

  it "has no professors" do
    expect(subject.professors).to be_empty
  end

end
