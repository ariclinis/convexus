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

ActiveRecord::Schema.define(version: 20170423002131) do

  create_table "bairros", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "descricao",                  null: false
    t.string  "codigo",                     null: false
    t.integer "municipio_id",               null: false
    t.text    "created_at",   limit: 65535, null: false
    t.text    "updated_at",   limit: 65535, null: false
  end

  create_table "bancos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "CodBanco",   limit: 65535
    t.string   "descricao"
    t.integer  "estado"
    t.integer  "utilizador"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "conta_bancaria", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "descricao"
    t.integer  "banco_id"
    t.string   "tipoConta"
    t.integer  "moeda_id"
    t.string   "estado"
    t.integer  "utilizador_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "entidades", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nome"
    t.string   "bi"
    t.integer  "provincia_id"
    t.integer  "municipio_id"
    t.integer  "bairro_id"
    t.string   "pai"
    t.string   "mae"
    t.string   "nif"
    t.integer  "tipoEntidade"
    t.string   "nacionalidade"
    t.string   "profissao"
    t.string   "genero"
    t.string   "estadoCivil"
    t.string   "telefone"
    t.string   "email"
    t.integer  "homePage"
    t.string   "estado"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "foto"
  end

  create_table "moedas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "codigo"
    t.string   "descricao"
    t.string   "pais"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "municipios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "descricao"
    t.string   "codigo"
    t.integer  "provincia_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "operacoes_faturas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "codigo"
    t.string   "descricao"
    t.integer  "id_estado"
    t.integer  "id_utilizador"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "pagamentos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "codigo"
    t.string   "formaPagamento"
    t.integer  "banco_id"
    t.integer  "conta_bancaria_id"
    t.string   "numeroTalao"
    t.date     "dataPagamento"
    t.float    "valorTalao",        limit: 24
    t.float    "valorUtilizado",    limit: 24
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "provincia", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "descricao"
    t.string   "codigo"
    t.string   "pais"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_entidades", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "codigo",     null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "nome",                                null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "utilizadors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nome"
    t.string   "nome_login"
    t.string   "email"
    t.string   "senha"
    t.string   "nivel_acesso"
    t.string   "estado"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
