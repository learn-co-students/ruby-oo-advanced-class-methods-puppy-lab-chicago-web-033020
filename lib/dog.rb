class Dog 

    attr_reader :name

    @@all = []

   def initialize(name)
    @name = name
    save
   end

   def self.all 
    @@all
   end 

   def self.clear_all 
    self.all.clear
   end 

   def self.print_all
    puts @@all.map{ |dog| dog.name }
   end

   def save 
    self.class.all << self
   end
end 
