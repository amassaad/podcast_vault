# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

p1 = Podcast.find_or_create_by!(
  title: "The Joe Rogan Experience", 
  link: "https://joerogan.com/", 
  description: "The Joe Rogan Experience podcast", 
  subtitle: "The Joe Rogan Experience podcast", 
  image: "https://upload.wikimedia.org/wikipedia/en/4/4b/The_Joe_Rogan_Experience_logo.jpg",
  author: "Joe Rogan"
)

p2 = Podcast.find_or_create_by!(
  title: "The Tim Ferriss Show",
  link: "https://tim.blog/podcast/",
  description: "The Tim Ferriss Show podcast",
  subtitle: "The Tim Ferriss Show podcast",
  image: "https://149346886.v2.pressablecdn.com/wp-content/uploads/2014/04/timferrissshowart-1400x1400.jpg",
  author: "Tim Ferriss"
)

e1 = Episode.find_or_create_by!(
  podcast: p1, title: "Joe Rogan Experience #1639 - Dan Crenshaw", 
  link: "https://open.spotify.com/episode/3Q1J2VqkZKXf1n1Q4ZJ6jH?si=8e9e9e9e9e9e9e9e", 
  description: "Dan Crenshaw is a politician and former United States Navy SEAL officer serving as the U.S. Representative for Texas's 2nd congressional district since 2019.", 
  published_at: "2021-05-04 00:00:00"
  )  
e2 = Episode.find_or_create_by!(
  podcast: p1, title: "Joe Rogan Experience #1638 - Michael Malice", 
  link: "https://open.spotify.com/episode/3Q1J2VqkZKXf1n1Q4ZJ6jH?si=8e9e9e9e9e9e9e9e", 
  description: "Michael Malice is an author and also hosts a podcast called “Your Welcome with Michael Malice” available on the GaS Digital Network.", 
  published_at: "2021-05-03 00:00:00"
  )

e3 = Episode.find_or_create_by!(
  podcast: p2, 
  title: "The Tim Ferriss Show #522: Anne Lamott on Taming Your Inner Critic, Finding Grace, and Prayer", 
  link: "https://open.spotify.com/episode/3Q1J2VqkZKXf1n1Q4ZJ6jH?si=8e9e9e9e9e9e9e9e", 
  description: "Anne Lamott on Taming Your Inner Critic, Finding Grace, and Prayer", 
  published_at: "2021-05-04 00:00:00"
  )
e4 = Episode.find_or_create_by!(
  podcast: p2, 
  title: "The Tim Ferriss Show #521: Dr. Andrew Huberman — A Neurobiologist on Optimizing Sleep, Enhancing Performance, Reducing Anxiety, Increasing Testosterone, and Using the Body to Control the Mind", 
  link: "https://open.spotify.com/episode/3Q1J2VqkZKXf1n1Q4ZJ6jH?si=8e9e9e9e9e9e9e9e", 
  description: "Dr. Andrew Huberman — A Neurobiologist on Optimizing Sleep, Enhancing Performance, Reducing Anxiety, Increasing Testosterone, and Using the Body to Control the Mind", 
  published_at: "2021-05-03 00:00:00"
  )
