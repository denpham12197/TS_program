class User < ApplicationRecord
  has_many :elements ,dependent: :destroy
  has_many :courses ,through: :elements
  has_many :reports ,dependent: :destroy
end
