class Elemento < ApplicationRecord

  def ubicacion
    "HABITACIÓN: #{habitacion}, BIBLIOTECA #{biblioteca}, ESPACIO #{espacio}"
  end
end
