# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Lang.create(name: 'English')
Lang.create(name: 'Русский')
Lang.create(name: 'Українська')

User.create(email: '_slavka@bigmir.net', password: '111111', lang_id: 1)

Category.create(name: 'Family')
Category.create(name: 'Building')
Category.create(name: 'Human')
