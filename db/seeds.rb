# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Lang.create(name: 'Українська', flag: 'ua')
Lang.create(name: 'English', flag: 'us')
Lang.create(name: 'Русский', flag: 'ru')


family = Category.create(name: 'Family')
building = Category.create(name: 'Building')
human = Category.create(name: 'Human')

word_1 = Word.create(name: 'father', lang_id: 2)
word_1.categories << family
word_2 = Word.create(name: 'отец', lang_id: 3)
word_2.categories << family
word_3 = Word.create(name: 'батько', lang_id: 1)
word_3.categories << family

word_4 = Word.create(name: 'hair', lang_id: 2)
word_4.categories << human
word_5 = Word.create(name: 'волосы', lang_id: 3)
word_5.categories << human
word_6 = Word.create(name: 'волосся', lang_id: 1)
word_6.categories << human

word_7 = Word.create(name: 'dauther', lang_id: 2)
word_7.categories << family
word_8 = Word.create(name: 'дочь', lang_id: 3)
word_8.categories << family
word_9 = Word.create(name: 'дочка', lang_id: 1)
word_9.categories << family

translation_1 = Translation.create()
translation_1.words << [word_1, word_2, word_3]
translation_2 = Translation.create()
translation_2.words << [word_4, word_5, word_6]
translation_3 = Translation.create()
translation_3.words << [word_7, word_8, word_9]

user = User.create(
  email: '_slavka@bigmir.net',
  password: '111111',
  lang_id: 1,
  translate_to: 2,
  category_id: '1'
)

collection_1 = Collect.create(user_id: 1, learned: false, frequency: 20, translation_id: 1)
collection_1.translations << translation_1

collection_2 = Collect.create(user_id: 1, learned: false, frequency: 20, translation_id: 2)
collection_2.translations << translation_2

collection_3 = Collect.create(user_id: 1, learned: false, frequency: 20, translation_id: 3)
collection_3.translations << translation_3

