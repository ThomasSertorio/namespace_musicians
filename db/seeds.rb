# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
%w(paul george ringo john).each do |musician|
  User.create(status: "musician", first_name: musician.capitalize, email:"#{musician}@beatles.fr", password:"00000000")
end

%w(rené maurice françois lulu).each do |bar_owner|
  User.create(status: "bar_owner", first_name: bar_owner.capitalize, email:"#{bar_owner}@beatles.fr", password:"00000000")
end
