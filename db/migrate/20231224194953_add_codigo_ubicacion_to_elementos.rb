class AddCodigoUbicacionToElementos < ActiveRecord::Migration[6.1]
  def change
    add_column :elementos, :codigo_ubicacion, :string
  end
end
