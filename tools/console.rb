require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


movie = Movie.new("sabrina")
movie2 = Movie.new("pilot")
movie3 = Movie.new("air bud")
movie4 = Movie.new("rugrats")
movie5 = Movie.new("cat dog")
movie6 = Movie.new("The movie")

jerry = Viewer.new("jerry")
brian = Viewer.new("brian")
eric = Viewer.new("eric")
prince = Viewer.new("prince")
ryan = Viewer.new("ryan")

item = QueueItem.new(eric, movie3, 4)
item = QueueItem.new(prince, movie, 3)
item = QueueItem.new(ryan, movie2, 5)
item = QueueItem.new(brian, movie4, 2)
item = QueueItem.new(eric, movie6, 1)
item = QueueItem.new(jerry, movie5, 4)
item = QueueItem.new(ryan, movie, 3)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
