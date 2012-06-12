class Provider < ActiveRecord::Base
  attr_accessible :description, :document, :email, :name, :phone, :type_person, :type_service, :adress_attributes, :task_ids, :logo
  has_one :adress
  has_and_belongs_to_many :tasks
  accepts_nested_attributes_for :adress

  has_attached_file :logo, :styles => {
    :medium => "300x300",
    :thumb  => "50x50#"
  }
  validates_attachment_size :logo, :less_than => 3.megabyte
  validates_attachment_content_type :logo, :content_type => %w[image/png image/jpeg image/gif image/tiff]

  def new_tasks_pending tasks
    tasks ||= []
    self.task_ids += tasks
  end

end
