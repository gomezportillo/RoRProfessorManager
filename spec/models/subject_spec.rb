require 'rails_helper'

RSpec.describe Subject, type: :model do
  subject { Subject.new }

  it "is valid with valid attributes" do
    subject.name = "Name"
    subject.credit = 6
    subject.professor = Professor.new name:"name", area:"area"
    expect(subject).to be_valid
  end

  it "is not valid with invalid attributes" do
    expect(subject).not_to be_valid
  end

  it "has no students" do
    expect(subject.students).to be_empty
  end
  
end
