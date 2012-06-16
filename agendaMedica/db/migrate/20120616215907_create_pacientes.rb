class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.integer :id
      t.string :nome
      t.integer :idade
      t.string :endereco
      t.string :rg

      t.timestamps
    end
  end
end
