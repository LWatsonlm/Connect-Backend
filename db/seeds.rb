# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Event.destroy_all



User.create(name: 'Mickey Mouse', photo_url: 'http://cartoon-characters.com/wp-content/uploads/2014/04/Mickey-Mouse-with-Gloves.jpg', linkedin_url: 'https://www.linkedin.com/in/andres-espinoza', hiring:true, looking:false, skills:'bowling', desired_skills: 'carpet flying')
Event.create(title: 'Disney Meetup', code: 'meetup squirrel', location: 'Disneyworld', time: '7.00', cost: '100.00', date: '11/8/2016')
