class Convenio < ActiveRecord::Base
  attr_accessible :id, :nome
  
  validates :id, :nome, :presence => true 
  validates :id, :numericality => { :only_integer => true }
  validates :id, :uniqueness => { :message => "Campo ID  unico" }
  validates :nome, :length => { :maximum => 100, :message => "nome e no maximo 200 caracteres"}    
end
