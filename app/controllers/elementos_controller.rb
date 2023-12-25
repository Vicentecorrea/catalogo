class ElementosController < ApplicationController

  def index
  end

  def search
    @searchable_attributes = [
      'titulo_obra',
      'autor_obra',
      'titulo_capitulo',
      'autor_capitulo',
      'temas',
      'idioma',
      'codigo_ubicacion',
      'material',
      'notas',
      'serie',
      'habitacion',
      'biblioteca',
      'espacio',
    ]
    @searched_text = params[:searched_text]
    @searched_text_downcase = @searched_text.downcase

    query_text = ''
    @searchable_attributes.each_with_index do |attr, index|
      query_text << "lower(#{attr}) like \'%#{@searched_text_downcase}%\' or "
    end
    query_text = query_text[..-4]
    @results = Elemento.where(query_text)
  end
end
