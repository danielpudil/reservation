class Lesson < ApplicationRecord
  belongs_to :room
  belongs_to :teacher
  belongs_to :course

  validates :start_at, :end_at, :room_id, :teacher_id, :course_id, presence: true
end
