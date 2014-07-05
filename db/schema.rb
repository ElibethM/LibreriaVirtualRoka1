# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140627013057) do

  create_table "books", force: true do |t|
    t.integer  "isbn"
    t.string   "titulo"
    t.string   "autor"
    t.string   "editorial"
    t.decimal  "precio"
    t.integer  "existencias"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.integer  "rfc"
    t.string   "nombre"
    t.string   "telefono"
    t.string   "email"
    t.string   "direccion"
    t.string   "facebook"
    t.string   "linkedIn"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "detail_orders", force: true do |t|
    t.integer  "order_id"
    t.integer  "book_id"
    t.integer  "cantidad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string   "nombre"
    t.string   "usuario"
    t.string   "password"
    t.string   "email"
    t.string   "direccion"
    t.string   "telefono"
    t.integer  "meta"
    t.boolean  "gerente"
    t.boolean  "vendedor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "models", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "models", ["email"], name: "index_models_on_email", unique: true
  add_index "models", ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true

  create_table "orders", force: true do |t|
    t.integer  "employee_id"
    t.integer  "client_id"
    t.datetime "fechaPedido"
    t.datetime "fechaParaEntregar"
    t.datetime "fechaEntrega"
    t.string   "direccion"
    t.boolean  "cancelado"
    t.boolean  "enEspera"
    t.boolean  "entregado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "promotions", force: true do |t|
    t.integer  "client_id"
    t.integer  "employee_id"
    t.datetime "fecha"
    t.string   "medioComunicacion"
    t.text     "acuerdo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "providers", force: true do |t|
    t.string   "nombre"
    t.string   "telefono"
    t.string   "email"
    t.string   "direccion"
    t.string   "tipoLibro"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sale_details", force: true do |t|
    t.integer  "sale_id"
    t.integer  "book_id"
    t.integer  "cantidad"
    t.decimal  "precio"
    t.integer  "descuento"
    t.decimal  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales", force: true do |t|
    t.integer  "client_id"
    t.datetime "fechaVenta"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
