class Character < ActiveRecord::Base
    has_many :character_comics 
    has_many :comics, through: character_comics

end