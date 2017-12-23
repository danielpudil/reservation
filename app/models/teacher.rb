class Teacher < ApplicationRecord
  has_many :lessons

  has_many :teacher_course_assignments, dependent: :delete_all
  has_many :courses, through: :teacher_course_assignments, dependent: :delete_all

  validates :first_name, :last_name, presence: true
end
