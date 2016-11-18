# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Event.destroy_all

User.destroy_all
Event.destroy_all

Lesbians = Event.create!({title: 'Lesbians Who Tech Meetup', code: 'lez connect', location: 'Phase 1', time: '8.00', cost: '5.00', date: '11/4/2016'})
CivicHacknight = Event.create!({title: 'Civic Hacknight', code: 'civicHack', location: 'Social Tables', time: '8.00', cost: '3.00', date: '11/3/2016'})
RailsBeginnersNight = Event.create!({title: 'Ruby on Rails: Beginners Night', code: 'rubyBigginer', location: 'The Iron Yard', time: '8.00', cost: '2.00', date: '11/4/2016'})
IntroToCodeWorkshop = Event.create!({title: 'Intro To Code Workshop', code: 'codeIntro', location: 'Greensboro', time: '8.00', cost: '3.00', date: '11/5/2016'})
Learn2CodeWorkshopJavaScript101 = Event.create!({title: 'Learn to Code Workshop: JavaScript 101', code: 'codeWorkshop', location: 'Tysons', time: '8.00', cost: '5.00', date: '11/6/2016'})
TechnicalInterviews = Event.create!({title: '"Technical Interviews"', code: 'techInterviews', location: 'WeddingWire', time: '8.00', cost: '2.00', date: '11/4/2016'})
InteractiveMapsWithPythonAndJavaScript = Event.create!({title: 'Interactive Maps With Python And JavaScript', code: 'mapPyJs', location: 'SunLight Foundation', time: '7.00', cost: '1.00', date: '11/3/2016'})
Code4ProgressHacknight = Event.create!({title: 'Code for Progress Hacknight', code: 'code4Progress', location: 'ConnecticutAve', time: '6.30', cost: '2.00', date: '11/13/2016'})
CaBiHackNightVI  = Event.create!({title: 'CaBi Hack Night VI ', code: 'cabiHack', location: 'WeWorkCrystalCity', time: '7.30', cost: '4.00', date: '11/11/2016'})
FreeCrashCourseIntro2Ruby  = Event.create!({title: 'Free Crash Course Intro 2 Ruby', code: 'introCourse', location: 'The Iron Yard', time: '6.30', cost: '3.00', date: '11/10/2016'})
