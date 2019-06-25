require 'rails_helper'

RSpec.describe StudentSubject, type: :model do
  subject { StudentSubject.new }

  it "is valid with valid attributes" do
    prof = Professor.new name: "name", area: "tic"
    stu = Student.new name: "name", avg_mark: 8
    sub = Subject.new name: "name", credit: 6, professor: prof
    subject.student = stu
    subject.subject = sub
    expect(subject).to be_valid
  end

  it "is not valid with invalid attributes" do
    expect(subject).not_to be_valid
  end

end
