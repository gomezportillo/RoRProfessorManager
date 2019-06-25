class Student < ApplicationRecord

  validates :name, presence: true
  validates :avg_mark, presence: true

  has_many :student_subjects, dependent: :destroy
  has_many :subjects, through: :student_subjects

  has_many :professors, through: :subjects

end
