class Paciente < ActiveRecord::Base
  attr_accessible :endereco, :id, :idade, :nome, :rg
end
