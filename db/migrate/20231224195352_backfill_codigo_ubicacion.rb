class BackfillCodigoUbicacion < ActiveRecord::Migration[6.1]
  def change
    Elemento.all.each do |e|
      e.update!(codigo_ubicacion: e.habitacion[..1] + e.codigo_biblioteca[..1] + e.espacio[..1])
    end
  end
end
