ActiveAdmin.register Elemento do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :titulo_obra, :autor_obra, :titulo_capitulo, :autor_capitulo, :temas, :material, :idioma, :notas, :serie, :habitacion, :biblioteca, :codigo_biblioteca, :espacio
  #
  # or
  #
  # permit_params do
  #   permitted = [:titulo_obra, :autor_obra, :titulo_capitulo, :autor_capitulo, :temas, :material, :idioma, :notas, :serie, :habitacion, :biblioteca, :codigo_biblioteca, :espacio]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :autor_obra
      f.input :titulo_capitulo
      f.input :autor_capitulo
      f.input :temas
      f.input :material
      f.input :idioma
      f.input :notas
      f.input :serie
      f.input :habitacion
      f.input :biblioteca
      f.input :codigo_biblioteca
      f.input :espacio
      f.actions
    end
  end
end
