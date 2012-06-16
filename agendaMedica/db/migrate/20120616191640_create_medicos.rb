class CreateMedicos < ActiveRecord::Migration
  def change
    create_table :medicos do |t|
      t.integer :id
      t.string :nome
      t.string :crm

      t.timestamps
    end
  end
end
