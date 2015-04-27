 r = Role.create(name: "Designer")
    Role.create(name: "Developer")
    Role.create(name: "Promoter")
    Platform.create([{name: "Web App"}, {name: "iPhone App"},
    {name: "Android App"}, {name: "Windows App"}])
    User.create(name: "Admin", email: "tartan@cmu.edu", password:
    "foobar", admin: true)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
