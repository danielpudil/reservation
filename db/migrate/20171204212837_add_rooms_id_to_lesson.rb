class AddRoomsIdToLesson < ActiveRecord::Migration[5.1]
  def change
    add_reference :lessons, :rooms, foreign_key: true
  end
end
