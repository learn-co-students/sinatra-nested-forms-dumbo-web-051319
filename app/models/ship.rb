class Ship
    @@all = []
    attr_accessor :name, :type,  :booty_attribute
    def initialize(name, type, booty_attribute)
        @name = name
        @type = type
        @booty_attribute = booty_attribute
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @all.clear
    end
end