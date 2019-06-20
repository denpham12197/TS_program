class Course < ApplicationRecord
  belongs_to :Course_categorie
  has_many :elements ,dependent: :destroy
  has_many :course_subjects,dependent: :destroy
  has_many :users, through: :elements
  has_many :subjects ,through: :course_subjects
end
