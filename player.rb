class Player

    attr_accessor :name, :position, :age, :url

    @@all = []

    def initialize(name, position, age, url)
        @name = name
        @position = position
        @age = age
        @url = url
        @@all << self
    end

    def self.all
        @@all
    end

end