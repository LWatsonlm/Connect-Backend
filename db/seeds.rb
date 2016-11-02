# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Event.destroy_all

Lesbians = Event.create!({title: 'Lesbians Who Tech Meetup', code: 'lez connect', location: 'Phase 1', time: '8.00', cost: '5.00', date: '11/2/2016'})
Disney = Event.create!({title: 'Disney Meetup', code: 'meetup squirrel', location: 'Disneyworld', time: '7.00', cost: '100.00', date: '11/8/2016'})

Mickey = User.create!({name: 'Mickey Mouse', photo_url: 'http://cartoon-characters.com/wp-content/uploads/2014/04/Mickey-Mouse-with-Gloves.jpg', linkedin_url: 'https://www.linkedin.com/in/andres-espinoza', hiring:true, looking: false, skills:'bowling', desired_skills: 'carpet flying', event: Disney})
Latoya = User.create!({name: 'Latoya Watson', photo_url: '', linkedin_url: 'https://www.linkedin.com/in/watsonlm', hiring: false, looking: true, skills: 'ruby on rails', desired_skills: 'being a boss at css', event: Lesbian})
