# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.create!(:email => "mash@spartaglobal.com", :password => "sparta")


t1 = Task.create!(item: "Clean shoes", user_id: u1.id)
t2 = Task.create!(item: "Finish homework", user_id: u1.id)