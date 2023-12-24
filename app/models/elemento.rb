class Elemento < ApplicationRecord

  after_create :guardar_codigo_ubicacion

  def guardar_codigo_ubicacion
    update!(codigo_ubicacion: habitacion[..1] + codigo_biblioteca[..1] + espacio[..1])
  end

  def ubicacion
    "HABITACIÓN: #{habitacion}, BIBLIOTECA #{biblioteca}, ESPACIO #{espacio}"
  end
end
