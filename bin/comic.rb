class Comic < ActiveRecord::Base 
    belongs_to :series
    belongs_to :character_comics
    has_many :characters, through: character_comics
    
    def self.write
        puts "comic"
    end
end