class Student < ApplicationRecord
  has_many :course_student_assignments, dependent: :delete_all
  has_many :courses, through: :course_student_assignments, dependent: :delete_all

  validates :first_name, :last_name, presence: true

    extend Enumerize

    enumerize :study_type, in: { full_time: 1, part_time: 2}, default: :full_time, scope: true, predicates: true
end
