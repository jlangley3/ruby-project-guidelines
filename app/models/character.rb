class Character < ActiveRecord::Base
    has_many :character_comics 
    has_many :comics, through: :character_comics

    def self.all_aliases
        self.all.map {|character| character.alias}
    end

    def authors
        charcom = CharacterComic.all.select {|cc| cc.character_id == self.id}
        char_ids = charcom.map {|comic| comic.comic_id}
        comics = Comic.all.select {|comic| char_ids.include?(comic.id)}
        authors = comics.map {|comic| comic.author}
    end

    def series
        charcom = CharacterComic.all.select {|cc| cc.character_id == self.id}
        char_ids = charcom.map {|comic| comic.comic_id}
        comics = Comic.all.select {|comic| char_ids.include?(comic.id)}
    end

end