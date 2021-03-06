class CreateAgendamentos < ActiveRecord::Migration
  def change
    create_table :agendamentos do |t|
      t.integer :id
      t.date :data
      t.time :hora
      t.integer :tempoconsulta
      t.integer :id_paciente
      t.integer :id_medico
      t.integer :id_convenio
      t.boolean :concluido
      t.boolean :cancelado
      t.text :prescricao

      t.timestamps
    end
  end
end
