class AddBuildingIdToRoom < ActiveRecord::Migration[5.1]
  def change
    add_reference :rooms, :building, foreign_key: true
  end
end
