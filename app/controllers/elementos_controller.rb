class ElementosController < ApplicationController

  def index
  end

  def search
    searchable_attributes = ['titulo_obra', 'autor_obra', 'titulo_capitulo', 'autor_capitulo', 'temas', 'idioma']
    @searched_text = params[:query]
    query_text = ''
    searchable_attributes.each_with_index do |attr, index|
      query_text << "lower(#{attr}) like \'%#{@searched_text}%\' or "
    end
    query_text = query_text[..-4]
    @results = Elemento.where(query_text)
  end
end
