# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Celebrity.destroy_all

rr = Celebrity.new(
  name: "Ryan Reynolds",
  birth_year: 1976,
  gender: "male"
)
rr.save

sj = Celebrity.new(
  name: "Blake Lively",
  birth_year: 1987,
  gender: "female"
)
sj.save

kd = Celebrity.new(
  name: "Kirsten Dunst",
  birth_year: 1982,
  gender: "female"
)
kd.save

jp = Celebrity.new(
  name: "Jesse Plemons",
  birth_year: 1988,
  gender: "male"
)
jp.save

Celebrity.create!([{
  name: "Amber Heard",
  birth_year: 1986,
  gender: "female"
},
{
  name: "Tobey Maguire",
  birth_year: 1975,
  gender: "male"
},
{
  name: "Chris Hemsworth",
  birth_year: 1983,
  gender: "male"
},
{
  name: "Gigi Hadid",
  birth_year: 1995,
  gender: "female"
}])

p "Created #{Celebrity.count} celebrities"

Marriage.destroy_all

Marriage.create!([{
  husband: rr.id,
  wife: sj.id
},
{
  husband: jp.id,
  wife: kd.id
}])

p "Created #{Marriage.count} marriages"

  
