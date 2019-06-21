class Subject < ApplicationRecord

  validates :name, presence: true
  validates :credit, presence: true

  belongs_to :professor

  has_many :student_subjects
  has_many :students, through: :student_subjects

end
