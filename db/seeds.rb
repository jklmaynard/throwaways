# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


poem1 = Poem.create(name: 'Poem Number One')
poem2 = Poem.create(name: 'Poem Number the second')

line1 = Line.create(line: 'This is the first line of poem one', poem_id: 1)
line2 = Line.create(line: 'This is the second line', poem_id: 1)
line3 = Line.create(line: 'This is the first line poem the second', poem_id: 2)
