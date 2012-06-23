class Agendamento < ActiveRecord::Base
  attr_accessible :cancelado, :concluido, :data, :hora, :id, :id_convenio, :id_medico, :id_paciente, :prescricao, :tempoconsulta
end
