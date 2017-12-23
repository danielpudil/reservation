class Course < ApplicationRecord
  has_many :lessons

  has_many :teacher_course_assignments, dependent: :destroy
  has_many :teachers, through: :teacher_course_assignments, dependent: :destroy

  has_many :course_student_assignments, dependent: :destroy
  has_many :students, through: :course_student_assignments, dependent: :destroy

  validates :title, presence: true

  extend Enumerize

  enumerize :study_type, in: { full_time: 1, part_time: 2}, default: :full_time, scope: true, predicates: true
  enumerize :language, in: { CZECH: 1, ENGLISH: 2}, default: :ENGLISH, scope: true, predicates: true
end
