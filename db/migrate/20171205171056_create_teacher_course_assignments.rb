class CreateTeacherCourseAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :teacher_course_assignments do |t|
      t.references :teacher, foreign_key: true
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
