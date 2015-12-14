# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'John', email: 'John@gmail.com', password: '123456', password_confirmation: '123456')
User.create(name: 'Bill', email: 'Bill@gmail.com', password: '123456', password_confirmation: '123456')
User.create(name: 'Sam', email: 'Sam@gmail.com', password: '123456', password_confirmation: '123456')
User.create(name: 'Herbert', email: 'hb@gmail.com', password: '123456', password_confirmation: '123456')
User.create(name: 'Robert', email: 'Robert@gmail.com', password: '123456', password_confirmation: '123456')

Movie.create([
  {
    creator_id: 4, 
    title: "The Dark Knight", 
    release_date: Date.today, 
    genre: "Action", 
    director: "Christopher Nolan", 
    actors: "Christian Bale", 
    poster: File.new("app/assets/images/a_darkknight.jpg"), 
    trailer: "https://www.youtube.com/watch?v=_PZpmTj1Q8Q", 
    description: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, the caped crusader must come to terms with one of the greatest psychological tests of his ability to fight injustice."
  },
  {
    creator_id: 1,
    title: "DeadPool", 
    release_date: Date.tomorrow,
    genre: "Adventure",
    director: "Tim Miller",
    actors: "Ryan Reynolds",
    poster: File.new("app/assets/images/a_deadpool.jpg"),
    trailer: "https://www.youtube.com/watch?v=FyKWUTwSYAs",
    description: "A former Special Forces operative turned mercenary is subjected to a rogue experiment that leaves him with accelerated healing powers and adopts the alter ego Deadpool."
  },
  {
    creator_id: 3,
    title: "Iron Man",
    release_date: (Date.today - 2),
    genre: "Action",
    director: "Jon Favreau",
    actors: "Robert Downey Jr.",
    poster: File.new("app/assets/images/a_iron.jpg"),
    trailer: "https://www.youtube.com/watch?v=8hYlB38asDY",
    description: "After being held captive in an Afghan cave, an industrialist creates a unique weaponized suit of armor to fight evil."
  },
  {
    creator_id: 2,
    title: "Kung Fu Panda",
    release_date: (Date.tomorrow + 2),
    genre: "Adventure",
    director: "Mark Osborne",
    actors: "Jack Black", 
    poster: File.new("app/assets/images/a_kungfu.jpg"),
    trailer: "https://www.youtube.com/watch?v=PXi3Mv6KMzY",
    description: "In the Valley of Peace, Po the Panda finds himself chosen as the Dragon Warrior despite the fact that he is obese and a complete novice at martial arts."
  },
  {
    creator_id: 5,
    title: "Batman Vs. Superman",
    release_date: Date.today - 2,
    genre: "Action",
    director: "Zack Snyder",
    actors: "Jack Black", 
    poster: File.new("app/assets/images/bvs.jpg"),
    trailer: "https://www.youtube.com/watch?v=0WWzgGyAH6Y",
    description: "Fearing the actions of a god-like Super Hero left unchecked, Gotham City's own formidable, forceful vigilante takes on Metropolis' most revered, modern-day savior, while the world wrestles with what sort of hero it really needs. And with Batman and Superman at war with one another, a new threat quickly arises, putting mankind in greater danger than it's ever known before."
  },
  {
    creator_id: 4,
    title: "Spiderman",
    release_date: Date.today,
    genre: "Action",
    director: "Marc Webb",
    actors: "Andrew Garfield", 
    poster: File.new("app/assets/images/spider.jpeg"),
    trailer: "https://www.youtube.com/watch?v=DlM2CWNTQ84",
    description: "When New York is put under siege by Oscorp, it is up to Spider-Man to save the city he swore to protect as well as his loved ones."
  },
  {
    creator_id: 2,
    title: "Mississippi Grind",
    release_date: Date.today - 4,
    genre: "Suspense",
    director: "Anna Boden",
    actors: "Ben Mendelsohn", 
    poster: File.new("app/assets/images/a_miss.jpg"),
    trailer: "https://www.youtube.com/watch?v=Ooca5idaNSk",
    description: "Down on his luck and facing financial hardship, Gerry teams up with younger charismatic poker player, Curtis, in an attempt to change his luck. The two set off on a road trip through the South with visions of winning back what's been lost."
  },
  {
    creator_id: 3,
    title: "Spectre",
    release_date: Date.today - 3,
    genre: "Thriller",
    director: "Sam Mendes",
    actors: "Daniel Craig", 
    poster: File.new("app/assets/images/spectre.jpg"),
    trailer: "https://www.youtube.com/watch?v=LTDaET-JweU",
    description: "A cryptic message from Bond's past sends him on a trail to uncover a sinister organization. While M battles political forces to keep the secret service alive, Bond peels back the layers of deceit to reveal the terrible truth behind SPECTRE."
  },
  {
    creator_id: 4,
    title: "The Martian",
    release_date: Date.today - 4,
    genre: "Adventure",
    director: "Ridley Scott",
    actors: "Matt Damon", 
    poster: File.new("app/assets/images/martian.jpg"),
    trailer: "https://www.youtube.com/watch?v=ej3ioOneTy8",
    description: "During a manned mission to Mars, Astronaut Mark Watney is presumed dead after a fierce storm and left behind by his crew. But Watney has survived and finds himself stranded and alone on the hostile planet. With only meager supplies, he must draw upon his ingenuity, wit and spirit to subsist and find a way to signal to Earth that he is alive."
  },
  {
    creator_id: 1,
    title: "The Peanuts Movie",
    release_date: Date.today - 5,
    genre: "Adventure",
    director: "Steve Martino",
    actors: "Noah Schnapp", 
    poster: File.new("app/assets/images/peanuts.jpg"),
    trailer: "https://www.youtube.com/watch?v=zQpUQPrAfQM",
    description: "Snoopy embarks upon his greatest mission as he and his team take to the skies to pursue their arch-nemesis, while his best pal Charlie Brown begins his own epic quest back home."
  },
  {
    creator_id: 5,
    title: "Sicario",
    release_date: Date.today - 5,
    genre: "Action",
    director: "Denis Villeneuve",
    actors: "Emily Blunt", 
    poster: File.new("app/assets/images/sicario.jpg"),
    trailer: "https://www.youtube.com/watch?v=sR0SDT2GeFg",
    description: "An idealistic FBI agent is enlisted by an elected government task force to aid in the escalating war against drugs at the border area between the U.S. and Mexico."
  }

  ])

Review.create([
  {
    movie_id: 1,
    reviewer_id: 1,
    rating: 5,
    content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim."
  },
  {
    movie_id: 1,
    reviewer_id: 3,
    rating: 7,
    content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim."
  },
  {
    movie_id: 3,
    reviewer_id: 3,
    rating: 8,
    content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim."
  },
  {
    movie_id: 5,
    reviewer_id: 4,
    rating: 2,
    content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim."
  },
  {
    movie_id: 6,
    reviewer_id: 5,
    rating: 9,
    content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim."
  },
  {
    movie_id: 7,
    reviewer_id: 1,
    rating: 7,
    content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim."
  },
  {
    movie_id: 7,
    reviewer_id: 2,
    rating: 2,
    content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim."
  },
  {
    movie_id: 7,
    reviewer_id: 3,
    rating: 1,
    content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim."
  },
  {
    movie_id: 9,
    reviewer_id: 3,
    rating: 10,
    content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim."
  },
  {
    movie_id: 10,
    reviewer_id: 4,
    rating: 1,
    content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim."
  },
  {
    movie_id: 10,
    reviewer_id: 5,
    rating: 9,
    content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim."
  },
  {
    movie_id: 11,
    reviewer_id: 1,
    rating: 3,
    content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim."
  },
  {
    movie_id: 11,
    reviewer_id: 5,
    rating: 8,
    content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim."
  },
  {
    movie_id: 11,
    reviewer_id: 4,
    rating: 1,
    content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim."
  },
  {
    movie_id: 11,
    reviewer_id: 3,
    rating: 8,
    content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim."
  },
  {
    movie_id: 11,
    reviewer_id: 2,
    rating: 4,
    content: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim."
  },


  ])

