# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


print(" #################################################\n")
print("                   Data-Creation                  \n")
print(" #################################################\n")
print(" ----------------- Admins -----------------\n")
Admin.create(name: "Ola", level: 1, active: 1)
Admin.create(name: "Maria", level: 2, active: 1)
Admin.create(name: "Nouran", level: 3, active: 0)

print(" ----------------- Victims -----------------\n")

Victim.create(name: 'alaa')
Victim.create(name: 'mostafa')
Victim.create(name: 'aya')
Victim.create(name: 'gamal')
Victim.create(name: 'maryam')

print(" ----------------- locations -----------------\n")

Location.create(victim_id: 1, latlng: '25.14')
Location.create(victim_id: 1, latlng: '25.14')
Location.create(victim_id: 1, latlng: '25.14')
Location.create(victim_id: 1, latlng: '25.14')
Location.create(victim_id: 1, latlng: '25.14')
Location.create(victim_id: 2, latlng: '25.14')
Location.create(victim_id: 2, latlng: '25.14')
Location.create(victim_id: 3, latlng: '25.14')
Location.create(victim_id: 2, latlng: '25.14')
Location.create(victim_id: 3, latlng: '25.14')
Location.create(victim_id: 1, latlng: '25.14')
Location.create(victim_id: 4, latlng: '25.14')
Location.create(victim_id: 4, latlng: '25.14')
Location.create(victim_id: 4, latlng: '25.14')