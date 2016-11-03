# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Event.destroy_all

Lesbians = Event.create!({title: 'Lesbians Who Tech Meetup', code: 'lez connect', location: 'Phase 1', time: '8.00', cost: '5.00', date: '11/4/2016'})
CivicHacknight = Event.create!({title: 'Civic Hacknight', code: 'civicHack', location: 'Social Tables', time: '8.00', cost: '3.00', date: '11/3/2016'})
RailsBeginnersNight = Event.create!({title: 'Ruby on Rails: Beginners Night!', code: 'rubyBigginer', location: 'The Iron Yard', time: '8.00', cost: '2.00', date: '11/4/2016'})
IntroToCodeWorkshop = Event.create!({title: 'Intro To Code Workshop', code: 'codeIntro', location: 'Greensboro', time: '8.00', cost: '3.00', date: '11/5/2016'})
Learn2CodeWorkshopJavaScript101 = Event.create!({title: 'Learn to Code Workshop: JavaScript 101', code: 'codeWorkshop', location: 'Tysons', time: '8.00', cost: '5.00', date: '11/6/2016'})
TechnicalInterviews = Event.create!({title: '"Technical Interviews"', code: 'techInterviews', location: 'WeddingWire', time: '8.00', cost: '2.00', date: '11/4/2016'})
InteractiveMapsWithPythonAndJavaScript = Event.create!({title: 'Interactive Maps With Python And JavaScript', code: 'mapPyJs', location: 'SunLight Foundation', time: '7.00', cost: '1.00', date: '11/3/2016'})
Code4ProgressHacknight = Event.create!({title: 'Code for Progress Hacknight', code: 'code4Progress', location: 'ConnecticutAve', time: '6.30', cost: '2.00', date: '11/13/2016'})
CaBiHackNightVI  = Event.create!({title: 'CaBi Hack Night VI ', code: 'cabiHack', location: 'WeWorkCrystalCity', time: '7.30', cost: '4.00', date: '11/11/2016'})
FreeCrashCourseIntro2Ruby  = Event.create!({title: 'Free Crash Course Intro 2 Ruby', code: 'introCourse', location: 'The Iron Yard', time: '6.30', cost: '3.00', date: '11/10/2016'})

Latoya = User.create!({name: 'Latoya Watson', photo_url: 'https://media.licdn.com/media/AAEAAQAAAAAAAAkNAAAAJDUxMWZkMDNiLWQ0YTctNDJkMC04NjljLWMyYTk3YjlhMGE0Mw.jpg', linkedin_url: 'https://www.linkedin.com/in/watsonlm'})
Liza = User.create!({name: 'Liza Floyd', photo_url: 'https://media.licdn.com/media/AAEAAQAAAAAAAAjpAAAAJGRiMmViYjcwLWMyODYtNGIzZS04MDEyLTIzYWI2OTFlYzJjMA.jpg', linkedin_url: 'https://www.linkedin.com/in/lizafloyd'})
Andres = User.create!({name: 'Andres Espinoza', photo_url: 'https://media.licdn.com/media/AAEAAQAAAAAAAAkNAAAAJDUxMWZkMDNiLWQ0YTctNDJkMC04NjljLWMyYTk3YjlhMGE0Mw.jpg', linkedin_url: 'https://www.linkedin.com/in/andres-espinoza'})
Mike = User.create!({name: 'Mike Rubin', photo_url: 'https://media.licdn.com/media/p/6/005/07b/04d/25faf8c.jpg', linkedin_url: 'https://www.linkedin.com/in/mike-rubin'})
Kevin = User.create!({name: 'Kevin Mahoney', photo_url: 'https://media.licdn.com/media/p/6/000/211/13b/15e05d3.jpg', linkedin_url: 'https://www.linkedin.com/in/kevin-mahoney-b58b2946'})
Andy = User.create!({name: 'Andy Whitley', photo_url: 'https://media.licdn.com/media/AAEAAQAAAAAAAAlZAAAAJGI1MTkyMGYzLWRmOGItNGMwMy05Nzg1LTdkZTQ2ZDdhMDg0YQ.jpg', linkedin_url: 'https://www.linkedin.com/in/andrew-whitley'})
Michael = User.create!({name: 'Michael Lai', photo_url: 'https://media.licdn.com/media/AAEAAQAAAAAAAAlZAAAAJDk1MGM4OTI4LWI0ZDQtNDg1OS1iMGE5LTRmZGE1MzU2NzJhYw.jpg', linkedin_url: 'https://www.linkedin.com/in/michaelzlai'})
Adrian = User.create!({name: 'Adrian Maseda', photo_url: 'https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAJPAAAAJGI2NjIxYTBmLTYzZDctNDhhMC05ODFhLTZhMGUzZjgwZTMxZQ.jpg', linkedin_url: 'https://www.linkedin.com/in/adrianmaseda'})
Jesse = User.create!({name: 'Jesse Shawl', photo_url: 'https://media.licdn.com/media/AAEAAQAAAAAAAAfSAAAAJDczNzQ5OGExLWU4YjQtNDlmNC1hZjRhLWRlZGNjNGM2ZDAyOQ.jpg', linkedin_url: 'https://www.linkedin.com/in/jesse-shawl-0a517361'})
Nick = User.create!({name: 'Latoya Watson', photo_url: 'https://media.licdn.com/media/AAEAAQAAAAAAAAkNAAAAJDUxMWZkMDNiLWQ0YTctNDJkMC04NjljLWMyYTk3YjlhMGE0Mw.jpg', linkedin_url: 'https://www.linkedin.com/in/watsonlm'})
