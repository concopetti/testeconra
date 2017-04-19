class CarroCompativelItem < ApplicationRecord  
  belongs_to :carro_pai,  class_name: 'Carro'
  belongs_to :filho, 			class_name: 'Carro', foreign_key: :carro_filho_id
  validates :carro_id, :uniqueness => { :scope => :carro_id }
end