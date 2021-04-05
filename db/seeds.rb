# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(
  [
    { name: 'Admin', email: 'admin@email.com', password: 'password', is_admin: true },
    { name: 'User', email: 'user@email.com', password: 'password', is_admin: false }
  ]
)

Kind.create(
  [
    {
      description: 'Gerar 1.000 bilhetes, numeros de 1 a 1.000 de 1 em 1',
      initial_number: 1,
      step: 1,
      tickets_amount: 100
    }
  ]
)