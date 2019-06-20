class CourseSubject < ApplicationRecord
  belongs_to :Course
  belongs_to :Subject
end
