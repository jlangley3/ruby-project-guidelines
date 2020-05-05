class Character < ActiveRecord::Base
    has_many :character_comics 
    has_many :comics, through: :character_comics

    def self.all_aliases
        self.all.map {|character| character.alias}
    end

    def authors
        comics = CharacterComic.all.select {|cc| cc.character_id == self.id}
        comics.map {|comic| comic.comic_id}
    end


end