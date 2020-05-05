class Comic < ActiveRecord::Base 
    belongs_to :series
    has_many :character_comics
    has_many :characters, through: :character_comics

    def self.publish_range(start_year, end_year)
        self.all.select {|comic| comic.publish_date >= start_year && comic.publish_date <= end_year}
    end

    def self.random(num=1)
        self.all.sample(num)
    end

    



end