Character.destroy_all
Series.destroy_all
Comic.destroy_all
CharacterComic.destroy_all


black_panther = Character.find_or_create_by(name: "Black Panther", alias: "T'Challa")
spider_man = Character.find_or_create_by(name: "Spiderman", alias: "Peter Parker")

avengers_series = Series.find_or_create_by(name: "Avengers", description: "Earth\'s Mightiest Heroes joined forces to take on threats that were too big for any one hero to tackle. With a roster that has included Captain America, Iron Man, Ant-Man, Hulk, Thor, Wasp and dozens more over the years, the Avengers have come to be regarded as Earth\'s No. 1 team.")
spidey_series = Series.find_or_create_by(name: "Spidey", description: "Spider-Man is the alias of Peter Parker, an orphan raised by his Aunt May and Uncle Ben in New York City after his parents Richard and Mary Parker were killed in a plane crash.")

avengers_1 = Comic.find_or_create_by(name: "Avengers 1", publish_date: 1998, series: avengers_series, author: "Dr. Seuss")
avengers_2 = Comic.find_or_create_by(name: "Avengers 2", publish_date: 2018, series: avengers_series, author: "J.K. Rowling")

spidey_1 = Comic.find_or_create_by(name: "Spidey 1", publish_date: 1988, series: spidey_series, author: "Walt Whitman")
spidey_2 = Comic.find_or_create_by(name: "Spidey 2", publish_date: 2005, series: spidey_series, author: "Toni Morrison")

spider_man.comics << spidey_1

# spidey_character_comics = CharacterComic.find_or_create_by(character: spider_man, comic: spidey_1)

# avengers_1.character = spider_man

# black_panther.comics << avengers_2

