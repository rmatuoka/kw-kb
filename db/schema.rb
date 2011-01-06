# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101223164118) do

  create_table "clients", :force => true do |t|
    t.string   "nome"
    t.string   "razao_social"
    t.string   "cnpj"
    t.string   "endereco"
    t.string   "telefone"
    t.string   "email"
    t.string   "site"
    t.string   "classificacao"
    t.string   "porte"
    t.string   "atividade"
    t.string   "contato_atendimento"
    t.string   "administrador"
    t.text     "outros_contatos"
    t.text     "servicos_contratados"
    t.text     "projetos_desenvolvidos"
    t.text     "recados"
    t.text     "agenda"
    t.text     "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", :force => true do |t|
    t.string   "nome"
    t.string   "atividade"
    t.string   "organizacao"
    t.string   "endereco"
    t.string   "telefone"
    t.string   "email"
    t.string   "data_nascimento"
    t.text     "interesses"
    t.text     "personalidade"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "acompanhamento"
  end

  create_table "journalists", :force => true do |t|
    t.string   "nome"
    t.string   "tipo"
    t.string   "cargo"
    t.string   "organizacao"
    t.string   "veiculo"
    t.string   "editoria"
    t.string   "endereco"
    t.text     "telefones"
    t.string   "email"
    t.string   "site"
    t.text     "interesses"
    t.text     "materias"
    t.text     "participacoes"
    t.text     "encontros"
    t.text     "observacoes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", :force => true do |t|
    t.string   "nome_fantasia"
    t.string   "razao_social"
    t.integer  "cnpj"
    t.string   "endereci"
    t.string   "telefone"
    t.string   "email"
    t.string   "site"
    t.text     "atividade"
    t.string   "contato"
    t.text     "outros_contatos"
    t.text     "servicos_realizados"
    t.text     "obs"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.string   "login_count"
    t.string   "current_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
