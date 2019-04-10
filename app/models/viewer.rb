class Viewer
  attr_accessor :username

  @@all = []

  def initialize(username)
    @username = username
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |queue|
      queue.viewer == self
    end
  end

  def queue_movies
    queue_items.map(&:movie)
  end

  def add_movie_to_queue(movie)
    QueueItem.new(self, movie, rating)
  end

  def rate_movie(movie, rating)
      if queue_items.map do |queue|
        queue.movie == movie
        queue.rating = rating
        end
      else
      QueueItem.new(self, movie, rating)
    end
  end
end
