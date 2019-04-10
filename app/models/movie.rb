class Movie
  attr_accessor :title, :queue_item

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |queue|
      queue.movie == self
    end
  end

  def viewers
    queue_items.map(&:viewer)
  end

  def average_rating
    rate = queue_items.map(&:rating)
    rate.inject(:+)/rate.size
  end

  def self.highest_rated
    self.all.max_by {|rate| rate.rating/rate.length.to_f}
  end
end
