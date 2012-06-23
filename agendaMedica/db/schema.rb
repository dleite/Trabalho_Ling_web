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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120623182036) do

  create_table "agendamentos", :force => true do |t|
    t.date     "data"
    t.time     "hora"
    t.integer  "id_paciente"
    t.integer  "id_medico"
    t.integer  "id_convenio"
    t.boolean  "concluido"
    t.boolean  "cancelado"
    t.text     "prescricao"
    t.time     "tempoconsulta"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "convenios", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "medicos", :force => true do |t|
    t.string   "nome"
    t.string   "crm"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pacientes", :force => true do |t|
    t.string   "nome"
    t.integer  "idade"
    t.string   "endereco"
    t.string   "rg"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
