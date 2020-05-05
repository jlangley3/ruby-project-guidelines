class Character < ActiveRecord::Base 
    has_many :comics, through: character_comics
    belongs_to :character_comic

end