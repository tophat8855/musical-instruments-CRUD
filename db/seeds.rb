# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Instrument.create(name: 'piano', group: 'percussion', price: '10000')
Instrument.create(name: 'violin', group: 'string', price: '1000')
Instrument.create(name: 'oboe', group: 'woodwind', price: '3000')
