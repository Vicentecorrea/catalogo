class ElementosController < ApplicationController

  def index
  end

  def search
    @searchable_attributes = ['titulo_obra', 'autor_obra', 'titulo_capitulo', 'autor_capitulo', 'temas', 'idioma', 'codigo_ubicacion']
    @searched_text = params[:searched_text].downcase

    query_text = ''
    @searchable_attributes.each_with_index do |attr, index|
      query_text << "lower(#{attr}) like \'%#{@searched_text}%\' or "
    end
    query_text = query_text[..-4]
    @results = Elemento.where(query_text)

    # Para mostrar resultados separados por atributo
    # @results = {}
    # @searchable_attributes.each do |attr|
    #   elementos = Elemento.where("lower(#{attr}) like \'%#{@searched_text}%\'")
    #   if elementos.any?
    #     @results[attr] = elementos
    #   end
    # end
  end
end
