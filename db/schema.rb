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

ActiveRecord::Schema[7.0].define(version: 2022_08_25_234203) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agentes", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nombre"
    t.string "rfc"
    t.string "direccion"
    t.string "email"
    t.bigint "agente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agente_id"], name: "index_clientes_on_agente_id"
  end

  create_table "comisiones", force: :cascade do |t|
    t.string "tipo", default: ""
    t.decimal "total", precision: 10, scale: 2, default: "0.0"
    t.text "comentario", default: ""
    t.decimal "porcentaje", precision: 10, scale: 2, default: "0.0"
    t.bigint "movimiento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movimiento_id"], name: "index_comisiones_on_movimiento_id"
  end

  create_table "depositos", force: :cascade do |t|
    t.decimal "total", precision: 10, scale: 2, default: "0.0"
    t.string "banco", default: ""
    t.date "fecha"
    t.boolean "valido", default: false
    t.string "empresa", default: ""
    t.string "nombre", default: ""
    t.bigint "movimiento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movimiento_id"], name: "index_depositos_on_movimiento_id"
  end

  create_table "movimientos", force: :cascade do |t|
    t.decimal "cantidad_total", precision: 10, scale: 2, default: "0.0"
    t.decimal "depositos_total", precision: 10, scale: 2, default: "0.0"
    t.decimal "retornos_total", precision: 10, scale: 2, default: "0.0"
    t.decimal "comision_total", precision: 10, scale: 2, default: "0.0"
    t.decimal "comision_agente", precision: 10, scale: 2, default: "0.0"
    t.decimal "comision_oficina", precision: 10, scale: 2, default: "0.0"
    t.string "estatus", default: "abierto"
    t.string "estatus_deposito", default: "pendiente"
    t.string "estatus_retorno", default: "pendiente"
    t.string "estatus_comision", default: "pendiente"
    t.bigint "agente_id"
    t.bigint "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agente_id"], name: "index_movimientos_on_agente_id"
    t.index ["cliente_id"], name: "index_movimientos_on_cliente_id"
  end

  create_table "retornos", force: :cascade do |t|
    t.decimal "total", precision: 10, scale: 2, default: "0.0"
    t.string "nombre", default: ""
    t.text "comentario", default: ""
    t.string "cuenta", default: ""
    t.string "clabe", default: ""
    t.string "swift", default: ""
    t.string "banco", default: ""
    t.string "dir_banco", default: ""
    t.string "no_tarjeta", default: ""
    t.boolean "valido", default: false
    t.bigint "movimiento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movimiento_id"], name: "index_retornos_on_movimiento_id"
  end

  create_table "solicitudes_facturas", force: :cascade do |t|
    t.string "estatus", default: "abierto"
    t.decimal "total", precision: 10, scale: 2, default: "0.0"
    t.text "comentario", default: ""
    t.bigint "agente_id"
    t.bigint "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agente_id"], name: "index_solicitudes_facturas_on_agente_id"
    t.index ["cliente_id"], name: "index_solicitudes_facturas_on_cliente_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.bigint "movimiento_id"
    t.bigint "solicitud_factura_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movimiento_id"], name: "index_tickets_on_movimiento_id"
    t.index ["solicitud_factura_id"], name: "index_tickets_on_solicitud_factura_id"
  end

end
