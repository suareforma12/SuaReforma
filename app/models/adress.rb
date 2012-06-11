class Adress < ActiveRecord::Base
  attr_accessible :cep, :city, :complement, :number, :provider_id, :state, :street
  belongs_to :provider
end
