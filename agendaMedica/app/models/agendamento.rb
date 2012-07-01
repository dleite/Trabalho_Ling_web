class Agendamento < ActiveRecord::Base
  attr_accessible :cancelado, :concluido, :data, :hora, :id, :id_convenio, :id_medico, :id_paciente, :prescricao, :tempoconsulta  
  validates :data, :hora, :id, :id_convenio, :id_medico, :id_paciente, :prescricao, :tempoconsulta, :presence => true   
  validates :id, :numericality => { :only_integer => true }
  validates :id, :uniqueness => { :message => "Campo ID  unico" }  
  validates :prescricao, :length => { :maximum => 250, :message => "nome e no maximo 250 caracteres"}     
  
end
