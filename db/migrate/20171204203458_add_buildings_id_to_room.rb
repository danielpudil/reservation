class AddBuildingsIdToRoom < ActiveRecord::Migration[5.1]
  def change
    add_reference :rooms, :buildings, foreign_key: true
  end
end
