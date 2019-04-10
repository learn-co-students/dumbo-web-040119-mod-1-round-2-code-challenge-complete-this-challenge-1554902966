class Movie

  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end



def queue_items
  QueueItem.all.select do |name|
    name.movie == self
end
end


def viewers
queue_items.all.select do |view|
  view.viewer
end
end


def average_rating
  x = queue_items.map do |rat|
    rat.rating
end
x.inject{ |sum, el| sum + el }.to_f / x.size
end




def self.highest_rated
a = Movie.all.select do |name|
    name.title == self
end
b = a.map do |rat|
  rating.rating
end
b.inject{ |sum, el| sum + el }.to_f / b.size

end
end
