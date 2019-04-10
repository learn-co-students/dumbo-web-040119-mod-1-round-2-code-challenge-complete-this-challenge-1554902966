class Viewer

  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

def queue_items
  QueueItem.all.select do |name|
    name.viewer == self
end
end

def queue_movies
queue_items.map do |mov|
mov.movie
end
end

#
# def queue_rating
# queue_items.map do |rat|
# rat.rating
# end
# end


def add_movie_to_queue(movie)
  QueueItem.new(self, movie, rating)
end





#
# def rate_movie(movie, rating)
#
# queue_items.map do |review|
#
#   review.rating = rating
# 
#
#
#
#   binding.pry
# if
#  queue_movies == movie && queue_items.map do |rat|
#     rat.rating == rating
#
#
#
# else
#   QueueItem.new(self, movie, rating?)
#
# end


end
