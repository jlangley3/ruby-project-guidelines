class CharacterComic < ActiveRecord::Base 
    has_many :comics
    has_many :character
end