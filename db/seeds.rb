black_panther = Character.find_or_create_by(name: "Black Panther", alias: "T'Challa")
spider_man = Character.find_or_create_by(name: "Spiderman", alias: "Peter Parker")

avengers_1 = Comic.find_or_create_by(name: "Avengers 1", publish_date: 1998)
avengers_2 = Comic.find_or_create_by(name: "Avengers 2", publish_date: 2018)