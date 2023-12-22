class ElementosController < ApplicationController

  def index
    @primer_elemento = Elemento.first
  end

  def buscar
    puts 'buscando!'
  end
end
