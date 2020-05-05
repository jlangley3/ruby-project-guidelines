class Comic < ActiveRecord::Base 
    belongs_to :series
    has_many :character_comics
    has_many :characters, through: :character_comics

    def self.write
        puts "comic"
    end
end