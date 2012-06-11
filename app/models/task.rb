class Task < ActiveRecord::Base
  attr_accessible :name
  has_and_belongs_to_many :providers
  default_scope where(:pending => "N")

  def self.create_pending_tasks(tasks)
    ids = []
    tasks ||= []
    tasks.each do |task|
      t = Task.create! :name => task
      t.pending = "S"
      t.save
      ids << t.id
    end
    ids
  end
end
