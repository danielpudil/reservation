class AddTeachersIdToLesson < ActiveRecord::Migration[5.1]
  def change
    add_reference :lessons, :teachers, foreign_key: true
  end
end
