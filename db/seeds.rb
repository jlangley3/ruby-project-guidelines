Character.destroy_all
Series.destroy_all
Comic.destroy_all
CharacterComic.destroy_all


black_panther = Character.find_or_create_by(name: "Black Panther", alias: "T'Challa")
spider_man = Character.find_or_create_by(name: "Spiderman", alias: "Peter Parker")
iron_man = Character.find_or_create_by(name: "Iron Man", alias: "Tony Stark")
hulk = Character.find_or_create_by(name: "Hulk", alias: "Bruce Banner")
captain_america = Character.find_or_create_by(name: "Captain America", alias: "Steve Rogers")
ant_man = Character.find_or_create_by(name: "Ant-Man", alias: "Hank Pym")
the_wasp = Character.find_or_create_by(name: "The Wasp", alias: "Janet Van Dyne")
thor = Character.find_or_create_by(name: "Thor", alias: "Thor Odinson")
storm = Character.find_or_create_by(name: "Storm", alias: "Ororo Monroe")
wolverine = Character.find_or_create_by(name: "Wolverine", alias: "Logan")

black_panther_series = Series.find_or_create_by(name: "Avengers", description: " Black Panther's real name is T'Challa, king and protector of the fictional\n African nation of Wakanda. Along with possessing enhanced abilities \n achieved through ancient Wakandan rituals of drinking the essence of the\n heart-shaped herb, T'Challa also relies on his proficiency in science,\n rigorous physical training, hand-to-hand combat skills, and access to wealth\n and advanced Wakandan technology to combat his enemies.")
spider_man_series = Series.find_or_create_by(name: "Spiderman Series", description: " Bitten by a radioactive spider, high school student Peter Parker gained\n the speed, strength and powers of a spider. Adopting the name Spider-Man,\n Peter hoped to start a career using his new abilities. Taught that with\n great power comes great responsibility, Spidey has vowed to use his\n powers to help people.")
iron_man_series = Series.find_or_create_by(name: "Ironman Series", description: " Wounded, captured and forced to build a weapon by his enemies, billionaire\n industrialist Tony Stark instead created an advanced suit of armor to save\n his life and escape captivity. Now with a new outlook on life, Tony uses\n his money and intelligence to make the world a safer, better place as Iron Man.")
hulk_series = Series.find_or_create_by(name: "Actor Presents Spider-Man and the Incredible Hulk", description: " Caught in a gamma bomb explosion while trying to save the life of a\n teenager, Dr. Bruce Banner was transformed into the incredibly powerful\n creature called the Hulk. An all too often misunderstood hero, the\n angrier the Hulk gets, the stronger the Hulk gets.")
captain_america_series = Series.find_or_create_by(name: "Adventures of Captain America", description: " Vowing to serve his country any way he could, young Steve Rogers took the\n super soldier serum to become America's one-man army. Fighting for the red,\n white and blue for over 60 years, Captain America is the living,\n breathing symbol of freedom and liberty.")
ant_man_series = Series.find_or_create_by(name: "Ant-Man & the Wasp", description: " Two years after Scott Lang was placed under house arrest due to his\n involvement with the Avengers, in violation of the Sokovia Accords.\n Hank Pym and his daughter Hope van Dyne briefly manage to open a tunnel to\n the quantum realm. They believe Pym's wife Janet van Dyne might be trapped\n there after shrinking to\n sub-atomic levels in 1987.")
the_wasp_series = Series.find_or_create_by(name: "All-New Wolverine", description: " When Janet Van Dyne's father died, she convinced her father's associate Hank\n Pym to give her a supply of ‘Pym particles’. Pym also subjected her to a\n procedure which granted her the ability to, upon shrinking, grow wings\n and fire blasts of energy, which she called her ‘wasp's stings.")
thor_series = Series.find_or_create_by(name: "Amazing Spider-Man Annual", description: " As the Norse God of thunder and lightning, Thor wields one of the greatest\n weapons ever made, the enchanted hammer Mjolnir. While others have\n described Thor as an over-muscled, oafish imbecile, he's quite smart and\n compassionate.  He's self-assured, and he would never, ever stop fighting\n for a worthwhile cause.")
storm_series = Series.find_or_create_by(name: "Astonishing X-Men", description: " Ororo Monroe is the descendant of an ancient line of African priestesses,\n all of whom have white hair, blue eyes, and the potential to wield magic.")
wolverine_series = Series.find_or_create_by(name: "Spidey", description: " Born with super-human senses and the power to heal from almost any wound,\n Wolverine was captured by a secret Canadian organization and given an\n unbreakable skeleton and claws. Treated like an animal, it took years for\n him to control himself. Now, he's a premiere member of both the X-Men and\n the Avengers.")

black_panther_comic_1 = Comic.find_or_create_by(name: "Avengers 1998", publish_date: 1998, series: black_panther_series, author: "Ralph Macchio", storyline: "The Avengers are reunited! As the founding members come together to\n discuss the recent wave of attacks on former teammates, Thor interrupts the\n proceedings with grave news: Asgard is in ruins, the Twilight Sword has been\n taken...doom awaits Midgard!")
black_panther_comic_2 = Comic.find_or_create_by(name: "Avengers 2018", publish_date: 2018, series: black_panther_series, author: "Stan Lee", storyline: "Thor Odinson. Steve Rogers. Tony Stark. The Big Three of the Avengers\n are reunited at last! And just in time to save the world from total annihilation at the hands of\n their most powerful enemies yet: the 2000-foot-tall space gods known as\n Celestials. Behold the coming of the Final Host. Who will answer the call to assemble for a wild new era of Earth’s Mightiest Heroes? Hint: one of them has a flaming skull for a head. And what strange, world-shaking connection exists between the Final Host and Odin’s ancient band of Prehistoric Avengers?")
spider_man_comic_1 = Comic.find_or_create_by(name: "Spider-Man: 101 Ways to End the Clone Saga", publish_date: 1997, series: spider_man_series, author: "Mark Bernardo", storyline: "Spider-Man's Clone Saga has spun completely out of control!\n There's only one team that can save the wall-crawler now: the Marvel editors!\n Bob Harras, Ralph Macchio, Tom Brevoort, and more put their heads together\n to see if ANYTHING can get Spidey out of this doppelganger debacle!")
spider_man_comic_2 = Comic.find_or_create_by(name: "Adventures of Spider-Man", publish_date: 1996, series: spider_man_series, author: "Stan Lee", storyline: "Shot in the Dark; Spidey disapproves of the Punisher's violent crime fighting\n methods and tries to put a stop to them.")
iron_man_comic_1 = Comic.find_or_create_by(name: "Age of Innocence: The Rebirth of Iron Man #1", publish_date: 1996, series: iron_man_series, author: "Stan Lee", storyline: "Still reeling from recent traumas, Iron Man must face off against his evil\n doppelganger.")
iron_man_comic_2 = Comic.find_or_create_by(name: "Age of X: Universe #1", publish_date: 2011, series: iron_man_series, author: "Stan Lee", storyline: "Mary Jane Watson and other Stark employees find that Stark's body has completely\n vanished from its pod, despite tests taken mere hours ago showing no sign of improvement\n or brain activity. It was discovered that Tony Stark's comatose body was\n taken to the Stark Industries Complex in Dover. Upon awakening when his biological systems rebooted, Tony Stark went into hiding until he fully recovered.")
hulk_comic_1 = Comic.find_or_create_by(name: "Absolute Carnage: Immortal Hulk #1", publish_date: 2019, series: hulk_series, author: "Greg Pak", storyline: "The character is both the Hulk, a green-skinned, hulking and muscular humanoid\n possessing a vast degree of physical strength, and his alter ego Dr. Robert Bruce Banner,\n a physically weak, socially withdrawn, and emotionally reserved physicist,\n the two existing as independent personalities and resenting of the other.")
hulk_comic_2 = Comic.find_or_create_by(name: "All-New Savage She-Hulk #1", publish_date: 2009, series: hulk_series, author: "Greg Pak", storyline: "Hiding in the same cavern that Spider-Man entered during his fight with the Enforcers\n and the [Green] Goblin. Totally paranoic now, the Hulk attacked the web-slinger.")
captain_america_comic_1 = Comic.find_or_create_by(name: "Adventures of Captain America #1", publish_date: 1991, series: captain_america_series, author: "Dan Slott", storyline: "The storyline re-tells the early years of Steve Rogers' turn\n as the Star-Spangled Avenger.")
captain_america_comic_2 = Comic.find_or_create_by(name: "Age of Heroes #1", publish_date: 2010, series: captain_america_series, author: "Dan Slott", storyline: "The Heroes are restored to their rightful place in this new era, and the world\n is safer for them. They defeated Osborn & his Siege on Asgard,\n now they have one last foe to face: the Mayor of New York.")
ant_man_comic_1 = Comic.find_or_create_by(name: "Adam: Legend of the Blue Marvel", publish_date: 2008, series: ant_man_series, author: "Kevin Grevioux", storyline: "Adam Brashear is a former fullback at Cornell University as well as a veteran\n of the Korean War, a member of the Marine Corps with two Silver Stars.\n While in the Marine Corps he met Conner Sims, the friend he would later know as Anti-Man.\n Brashear later became the project lead on a scientific attempt to harness anti-matter through the creation of a Negative Reactor which created a bridge between the Negative Zone and the positive matter universe.")
ant_man_comic_2 = Comic.find_or_create_by(name: "Ant-Man & the Wasp", publish_date: 2010, series: ant_man_series, author: "Kevin Grevioux", storyline: "Two years after Scott Lang was placed under house arrest due to his involvement with the Avengers,\n in violation of the Sokovia Accords. Hank Pym and his daughter\n Hope van Dyne briefly manage to open a tunnel to the quantum realm. They believe Pym's wife\n Janet van Dyne might be trapped there after shrinking to sub-atomic levels in 1987.")
the_wasp_comic_1 = Comic.find_or_create_by(name: "Avengers 1998", publish_date: 1998, series: the_wasp_series, author: "Ralph Macchio", storyline: "The Avengers are reunited! As the founding members come together to discuss the recent wave of attacks\n on former teammates, Thor interrupts the proceedings with grave news:\n Asgard is in ruins, the Twilight Sword has been taken...doom awaits Midgard!")
the_wasp_comic_2 = Comic.find_or_create_by(name: "Ant-Man & the Wasp: Living Legends", publish_date: 2018, series: the_wasp_series, author: "Ralph Macchio", storyline: "SCOTT LANG MUST PICK UP WHERE HANK PYM LEFT OFF! When the leader of an\n interdimensional force is captured by a brutal dictator, they reach out to their \nold friends ANT-MAN & THE WASP! But…uh...you see, SCOTT LANG is not exactly the Ant-Man\n who helped them all those years ago…he’s AN Ant-Man, but not THAT Ant-Man…but when the fate of freedom hangs in the balance, Scott Lang has no choice but to try and fill the shoes of his mentor, Hank Pym, as Ant-Man and the Wasp fly once again! Written and drawn by comics legends RALPH MACCHIO and ANDREA DI VITO, you won’t want to miss the epic intergalactic conflict…or the return of the LIVING ERASER!")
thor_comic_1 = Comic.find_or_create_by(name: "Astonishing Thor", publish_date: 2010, series: thor_series, author: "Rob Rodi", storyline: "The God of Thunder faces the fury of living planets! When terrible storms threaten to tear our world apart,\n Thor traces the cause to Ego, the Living Planet - out of his orbit and rocketing\n across the solar system on an unstoppable quest to rescue his long-lost brother,\n held captive by the cosmic entity the Collector. but there will be no happy reunion at the end of his journey - for when Ego and Alterego meet, only one can survive...and earth surely will be destroyed. only Thor has power enough to avert the pending apocalypse - but to do so, he'll have to rely on the help of a wind goddess with questionable motives...and a stormy history with the God of Thunder.")
thor_comic_2 = Comic.find_or_create_by(name: "The Amazing Spider-Man", publish_date: 1963, series: thor_series, author: "Stan Lee", storyline: "The classic adventures of Spider-Man from the early days up until the 90's! Meet all of Spidey's deadly\n enemies, from the Green Goblin and Doctor Octopus to Venom and Carnage, plus see\n Peter Parker fall in love, face tragedy and triumph, and learn that with great\n power comes great responsibility.")
storm_comic_1 = Comic.find_or_create_by(name: "Alpha Flight", publish_date: 1983, series: storm_series, author: "John Byrne", storyline: "Alpha Flight is a fictional team of Canadian superheroes appearing in American\n comic books published by Marvel Comics. The characters premiered in The\n Uncanny X-Men #120, and were created to serve as part of the hero Wolverine's\n backstory. Marvel published an Alpha Flight comic book series from 1983 to 1994.")
storm_comic_2 = Comic.find_or_create_by(name: "Astonishing X-Men", publish_date: 2004, series: storm_series, author: "Marjorie Liu", storyline: "Cyclops and Emma Frost re-form the X-Men with the express purpose of 'astonishing'\n the world. But when breaking news regarding the mutant gene unexpectedly\n hits the airwaves, will it derail their new plans before they even\n get started?")
wolverine_comic_1 = Comic.find_or_create_by(name: "Alpha Flight", publish_date: 1983, series: wolverine_series, author: "John Byrne", storyline: "Alpha Flight is a fictional team of Canadian superheroes appearing in American\n comic books published by Marvel Comics. The characters premiered in The Uncanny\n X-Men #120, and were created to serve as part of the hero Wolverine's backstory.\n Marvel published an Alpha Flight comic book series from 1983 to 1994.")
wolverine_comic_2 = Comic.find_or_create_by(name: "All-New X-Men", publish_date: 2012, series: wolverine_series, author: "Brian Bendis", storyline: "The series centers on the five original X-Men, brought from the past to the\n present to confront their future counterparts.")

black_panther.comics << black_panther_comic_1
black_panther.comics << black_panther_comic_2
spider_man.comics << spider_man_comic_1
spider_man.comics << spider_man_comic_2
iron_man.comics << iron_man_comic_1
iron_man.comics << iron_man_comic_2
hulk.comics << hulk_comic_1
hulk.comics << hulk_comic_2
captain_america.comics << captain_america_comic_1
captain_america.comics << captain_america_comic_2
ant_man.comics << ant_man_comic_1
ant_man.comics << ant_man_comic_2
the_wasp.comics << the_wasp_comic_1
the_wasp.comics << the_wasp_comic_2
thor.comics << thor_comic_1
thor.comics << thor_comic_2
storm.comics << storm_comic_1
storm.comics << storm_comic_2
wolverine.comics << wolverine_comic_1
wolverine.comics << wolverine_comic_2



# spidey_character_comics = CharacterComic.find_or_create_by(character: spider_man, comic: spidey_1)

# avengers_1.character = spider_man

# black_panther.comics << avengers_2

