class Character < ActiveRecord::Base
    has_many :character_comics 
    has_many :comics, through: :character_comics

    def self.all_aliases
        self.all.map {|character| character.alias}
    end

    def comic_id
        charcom = CharacterComic.all.select {|cc| cc.character_id == self.id}
        com_ids = charcom.map {|comic| comic.comic_id}
        comics = Comic.all.select {|comic| com_ids.include?(comic.id)}
    end

    def authors
        comic_id.map {|comic| comic.author}
    end

    def series
        series_ids = comic_id.map {|comic| comic.series_id}
        series = Series.all.select {|series| series_ids.include?(series.id)}
    end

end