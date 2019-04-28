# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# require 'csv'

# # movie_path = Rails.root.join('db', 'movies.csv').to_s

# # ALL_MOVIES = CSV.read(movie_path, {headers: true, header_converters: :symbol})

# # ###### Create Movies and Genres #######
# # all_genres = []

# # puts "Creating movies and genres table"

# # ALL_MOVIES.each do |lines|
# #   ## Create Movies
# #   id = lines[:movieid]
# #   title = lines[:title]

# #   movie_instance = Movie.create({id: id, title:title})
# #   puts title

# #   ## Create Genres
# #   all_genres << lines[:genres].split('|')
# #   unique_genres =  all_genres.flatten.uniq
  
# #   unique_genres.each do |genre|
# #     Genre.create({genre: genre})
# #   end
# # end
# # puts "Finished creating reating movies and genres table"

# # ####### Create Movies_Genres ######
# # puts "Creating movies_genres table"

# # ALL_MOVIES.each do |lines|
# #   genres = lines[:genres].split('|')
# #   movie = Movie.find(lines[:movieid])

# #   genres.each do |genre|
# #     genre_instance = Genre.find_by(genre: genre)
# #     movie.genres << genre_instance
# #     movie.save
# #   end 
# # end
# # puts "Finished creating movies_genres table"
# # ####### Create User #######

# # puts "Creating users ..."
# user_and_rating_path = Rails.root.join('db', 'ratings.csv').to_s

# ALL_USERS = CSV.read(user_and_rating_path, {headers: true, header_converters: :symbol})

# # all_user_entries = []

# # ALL_USERS.each do |lines|
# #   # saves all the users from the ratings db
# #   all_user_entries << lines[:userid]
# # end

# # unique_user_ids = all_user_entries.uniq

# # unique_user_ids.each do |id|
# #   email = Faker::Internet.email
# #   User.create({id: id, email: email, password:'123456'})
# #   puts User.last.email
# # end

# ####### Create Ratings #######
# puts "Creating ratings ..."
# # go through each line
# ALL_USERS.each do |lines|
#   # find the corresponding movie and the user
#   user = User.find(lines[:userid])
#   movie = Movie.find(lines[:movieid])
#   rating = lines[:rating]

#   Rating.create(movie_id: movie.id, user_id: user.id, user_rating: rating)
#   # saves all the entries of ratings
#   puts "still in ratings.."
# end


# puts "Seeding over"