class SubjectCategory < ApplicationRecord
  has_many :subjects , dependent: :destroy
end
