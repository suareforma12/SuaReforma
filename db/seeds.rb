# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
tasks = %w[Alvenaria Serralheria Pinturas\ e\ texturas Eletricidade Vidracaria Paisagismo Gesso Hidraulica]

tasks.each do |task|
  t = Task.new
  t.name = task
  t.pending = "N"
  t.save
end
