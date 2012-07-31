class Task < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :providers
  scope :pending, where(:pending => "N")

  # Retornan um array de id's a partir de um array de novas tasks
  def self.create_pending_tasks(tasks)
    ids = []
    # Caso não receba nenhuma task
    tasks ||= []

    # Pra cada task do array cria uma task e armazena o id
    # que sera retornado pelo metodo
    tasks.each do |task|
      t = Task.create! :name => task
      t.pending = "S"
      t.save
      ids << t.id
    end
    # ids das tasks recem criadas
    ids
  end
end
