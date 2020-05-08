
class Character < ActiveRecord::Base
    has_many :character_comics 
    has_many :comics, through: :character_comics

    def self.all_aliases
        self.all.map {|character| character.alias}
    end

    def list_of_comics
        comics.map {|comic| comic.name}
    end

    def authors
        comics.map {|comic| comic.author}
    end

    def series
        series_ids = comics.map {|comic| comic.series_id}
        series = Series.all.find {|series| series_ids.include?(series.id)}
    end

    def series_name
        series.name
    end

    def series_description
        series.description
    end

end