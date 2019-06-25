class Professor < ApplicationRecord

  validates :name, presence: true
  validates :area, presence: true

  has_many :subjects, dependent: :destroy
  has_many :students, through: :subjects

end
