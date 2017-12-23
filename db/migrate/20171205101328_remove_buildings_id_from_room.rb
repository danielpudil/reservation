class RemoveBuildingsIdFromRoom < ActiveRecord::Migration[5.1]
  def change
    remove_reference :rooms, :buildings, foreign_key: true
  end
end
