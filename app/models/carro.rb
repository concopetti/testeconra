class Carro < ApplicationRecord

	has_many :pais,   class_name: 'CarroCompativelItem', foreign_key: 'carro_pai_id'
  has_many :filhos, class_name: 'CarroCompativelItem', foreign_key: 'carro_filho_id'
  accepts_nested_attributes_for :filhos, allow_destroy: true, reject_if: proc { |attrs| attrs['carro_filho_id'].blank? }

end
