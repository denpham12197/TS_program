class Subject < ApplicationRecord
  belongs_to :Subject_category
  has_many :course_subjects
  has_many :courses ,through: :course_subjects
  has_many :tasks ,dependent: :destroy
end
