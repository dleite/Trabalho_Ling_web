class Medico < ActiveRecord::Base
  attr_accessible :crm, :id, :nome  
  validates :crm, :id, :nome, :presence => true 
  validates :id, :numericality => { :only_integer => true }
  validates :id, :uniqueness => { :message => "Campo ID  unico" }
  validates :crm, :uniqueness => { :message => "Campo CRM e unico" }
  validates :nome, :length => { :maximum => 100, :message => "nome e no maximo 100 caracteres"} 
  validates :crm, :length => { :maximum => 20, :message => "CRM e no maximo 20 caracteres" }
end



