class Paciente < ActiveRecord::Base
  attr_accessible :endereco, :id, :idade, :nome, :rg
  
  validates :id, :uniqueness => { :message => "Campo ID  unico" }  
  validates :rg, :uniqueness => { :message => "Campo RG  unico" }  
  validates :endereco, :id, :nome, :presence => true 
  validates :id, :numericality => { :only_integer => true }    
  validates :nome, :length => { :maximum => 100, :message => "nome e no maximo 100 caracteres"} 
  validates :rg, :length => { :maximum => 10, :message => "RG e no maximo 10 caracteres" }  
end
