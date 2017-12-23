class RemoveRoomsIdFromLesson < ActiveRecord::Migration[5.1]
  def change
    remove_reference :lessons, :rooms, foreign_key: true
  end
end
