class AddCoordinatesToDreams < ActiveRecord::Migration[7.1]
  def change
    add_column :dreams, :address, :string
    add_column :dreams, :latitude, :float
    add_column :dreams, :longitude, :float
  end
end
