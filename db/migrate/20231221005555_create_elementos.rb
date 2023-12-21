class CreateElementos < ActiveRecord::Migration[6.1]
  def change
    create_table :elementos do |t|
      t.text :titulo_obra
      t.string :autor_obra
      t.text :titulo_capitulo
      t.string :autor_capitulo
      t.text :temas
      t.string :material
      t.string :idioma
      t.text :notas
      t.text :serie
      t.string :habitacion
      t.string :biblioteca
      t.string :codigo_biblioteca
      t.string :espacio

      t.timestamps
    end
  end
end
