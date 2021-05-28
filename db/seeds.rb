# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Department.create(name: 'Engineering')
Department.create(name: 'Finance')
Department.create(name: 'Management')

Employee.create(first_name: 'Bruce', last_name: 'Wayne', department_id: 1)
Employee.create(first_name: 'Lex', last_name: 'Luthor', department_id: 2)
Employee.create(first_name: 'Clark', last_name: 'Kent', department_id: 3)