# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Doorkeeper::Application.create(name: "Monocle", redirect_uri: "http://localhost:3001/auth/census/callback", scopes: '')

# Create some users
cohort_1606 = [
  "Dan Broadbent",
  "Ryan Workman",
  "Calaway Calaway",
  "Brian Heim",
  "Brendan Dillon",
  "Bryan Goss",
  "Jasmin Hudacsek",
  "Susi Irwin",
  "Nate Anderson",
  "David Davydov",
  "Raphael Barbo",
  "Jesse Spevack",
  "Sonia Gupta",
  "Jean Joeris"
]

cohort = Cohort.create(name: "1606-BE")

cohort_1606.each do |person|
  first_name = person.split.first
  last_name = person.split.last
  user = User.new({
    first_name: first_name,
    last_name: last_name,
    cohort_id: cohort.id,
    email: "#{first_name}.#{last_name}@example.com",
    password: "password1",
    confirmed_at: DateTime.new()
  })
  if user.save
    puts "Added #{user.first_name} #{user.last_name} to the Users table."
  end
end

# Create some roles
["applicant", "invited", "enrolled", "active student",
 "on leave", "graduated", "exited", "removed", "mentor", "admin"].each do |role|
   print "Creating role: '#{role}'... "
   Role.find_or_create_by(name: role)
   print "Role #{Role.last.id} has been created with name '#{Role.last.name}'\n\n"
 end

#make jeff admin
jeff = User.find_or_create_by(  first_name: "Jeff",
                                last_name: "Casimir",
                                email: "jeff@turing.io",
                                slack: "j3",
                                twitter: "j3")
print "Found or created Jeff with id #{jeff.id}.... "
print "Adding admin role to Jeff.... "
jeff.roles << Role.find_by(name: "admin")
print "Jeff now has role: #{jeff.roles.last.name}.\n\n"
