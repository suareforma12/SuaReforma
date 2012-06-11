class Provider < ActiveRecord::Base
  attr_accessible :description, :document, :email, :name, :phone, :type_person, :type_service, :adress_attributes, :task_ids
  has_one :adress
  has_and_belongs_to_many :tasks
  accepts_nested_attributes_for :adress
end
