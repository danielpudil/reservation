class RemoveTeachersIdFromLesson < ActiveRecord::Migration[5.1]
  def change
    remove_reference :lessons, :teachers, foreign_key: true
  end
end
