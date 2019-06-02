# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
StressType.destroy_all
Walk.destroy_all
Stress.destroy_all

User.connection.execute('ALTER SEQUENCE users_id_seq RESTART WITH 1')
StressType.connection.execute('ALTER SEQUENCE stress_types_id_seq RESTART WITH 1')
Walk.connection.execute('ALTER SEQUENCE walks_id_seq RESTART WITH 1')
Stress.connection.execute('ALTER SEQUENCE stresses_id_seq RESTART WITH 1')

User.create(
    username: "user1@email.com"
)

User.create(
    username: "user2@email.com"
)

User.create(
    username: "user3@email.com"
)

User.create(
    username: "user4@email.com"
)

User.create(
    username: "user5@email.com"
)

p "Created #{User.count} profiles"

StressType.create(
    title: "Construction"
)

StressType.create(
    title: "Rubbish"
)

StressType.create(
    title: "Dog Poop"
)

StressType.create(
    title: "Unidentified Smell"
)

StressType.create(
    title: "Noise"
)

p "Created #{StressType.count} stress Types"

Walk.create(
    title: "Walk 1",
    description: "Walk from Parc La Fontaine to Concordia",
    prewalkReflections: "Feeling a bit blue today",
    postwalkReflections: "There is a lot of construction",
    user_id: 1
)

Walk.create(
    title: "Walk 2",
    description: "Walk from Parc La Fontaine to Concordia",
    prewalkReflections: "Beautiful day today",
    postwalkReflections: "Hmm",
    user_id: 2
)

Walk.create(
    title: "Walk 3",
    description: "Walk from Parc La Fontaine to Concordia",
    prewalkReflections: "The world sucks",
    postwalkReflections: "Oh maybe it isn't so bad",
    user_id: 3
)

p "Created #{Walk.count} walks"

Stress.create(
    title: "Construction",
    description: "Digging up the road",
    intensity: 3,
    response: "Had to cross the road and block my ears for the noise",
    image: "https://www.yarracity.vic.gov.au/-/media/all-images/road-works_2010_4.jpg?h=2848&la=en&w=4272&hash=6A72761109CFF53B418A622EDF5FAEDFD5AC0FB8",
    latitude: 45.5271911,
    longitude: -73.5709764,
    stress_type_id: 1,
    walk_id: 1
)

Stress.create(
    title: "Road blocked",
    description: "Digging up the road",
    intensity: 4,
    response: "Had to go down a side street",
    image: "http://www.deeside.com/wp-content/uploads/2018/09/Screen-Shot-2018-09-13-at-16.31.35.jpg",
    latitude: 45.5230329,
    longitude: -73.5775828,
    stress_type_id: 1,
    walk_id: 1
)

Stress.create(
    title: "Ugh what's that smell",
    description: "Rubbish has been scattered and gone rotten",
    intensity: 5,
    response: "Made me feel quite ill, but not much to do about it",
    image: "https://www.thetimes.co.uk/imageserver/image/methode%2Fsundaytimes%2Fprod%2Fweb%2Fbin%2F8347b612-9277-11e8-86ee-e22d14bef8b7.jpg?crop=2250%2C1266%2C0%2C117&resize=685",
    latitude: 45.5159816,
    longitude: -73.5744929,
    stress_type_id: 2,
    walk_id: 1
)

Stress.create(
    title: "Potholes",
    description: "Footpath has some quite big potholes",
    intensity: 2,
    response: "Nearly fell in one, so had to watch where I was looking",
    image: "http://hauxton.net/wp-content/uploads/2015/02/pothole-300x170.jpg",
    latitude: 45.5216197,
    longitude: -73.5777544,
    stress_type_id: 1,
    walk_id: 2
)

Stress.create(
    title: "Loud!",
    description: "People beeping their horns, roadworks, so much noise",
    intensity: 4,
    response: "Not much I could do",
    image: "http://hauxton.net/wp-content/uploads/2015/02/pothole-300x170.jpg",
    latitude: 45.516568,
    longitude: -73.5766386,
    stress_type_id: 5,
    walk_id: 3
)

p "Created #{Stress.count} stresses"