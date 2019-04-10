class QueueItem

  attr_reader :viewer, :movie
  attr_accessor :rating

  @@all =[]

  def initialize(viewer, movie, rating = 0)
    @viewer = viewer
    @movie = movie
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

  # 
  # def viewer
  #   @@all.select do |person|
  #     binding.pry
  #     person.viewer
  #   end
  # end
  def viewer
    @@all.map(&:viewer)
  end

  def movie
    @@all.map(&:movie)
  end

  # def rating
  #
  # end

end
