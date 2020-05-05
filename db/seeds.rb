Character.destroy_all
Series.destroy_all
Comic.destroy_all
CharacterComic.destroy_all


black_panther = Character.find_or_create_by(name: "Black Panther", alias: "T'Challa")
spider_man = Character.find_or_create_by(name: "Spiderman", alias: "Peter Parker")

avengers_series = Series.find_or_create_by(name: "Avengers")
spidey_series = Series.find_or_create_by(name: "Spidey")

avengers_1 = Comic.find_or_create_by(name: "Avengers 1", publish_date: 1998, series: avengers_series)
avengers_2 = Comic.find_or_create_by(name: "Avengers 2", publish_date: 2018, series: avengers_series)

spidey_1 = Comic.find_or_create_by(name: "Spidey 1", publish_date: 1988, series: spidey_series)
spidey_2 = Comic.find_or_create_by(name: "Spidey 2", publish_date: 2005, series: spidey_series)

spider_man.comics << spidey_1

# spidey_character_comics = CharacterComic.find_or_create_by(character: spider_man, comic: spidey_1)

# avengers_1.character = spider_man

# black_panther.comics << avengers_2

