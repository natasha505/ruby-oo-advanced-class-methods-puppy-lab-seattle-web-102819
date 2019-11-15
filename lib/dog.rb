class Dog

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        save
    end 

    def self.all  # returns all Dog instances
        @@all
    end 

    def self.clear_all  # deletes all existing dog instances
        @@all.clear
    end 

    def self.print_all  # <iterate> thru all ind dog instances & puts out
        puts @@all.map { |dog| dog.name }       # their names 
    end 

    def save    #creates save methods. flip places with initialize
        @@all << self 
    end 


end 