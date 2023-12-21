# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_12_21_011238) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "elementos", force: :cascade do |t|
    t.text "titulo_obra"
    t.string "autor_obra"
    t.text "titulo_capitulo"
    t.string "autor_capitulo"
    t.text "temas"
    t.string "material"
    t.string "idioma"
    t.text "notas"
    t.text "serie"
    t.string "habitacion"
    t.string "biblioteca"
    t.string "codigo_biblioteca"
    t.string "espacio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
