-- Brayden Nino
-- Cars SQL Project
-- 2/9/23
-- Platt Technical High School



CREATE DATABASE music;
-- creates table in music
create table MusicData(
        id INTEGER PRIMARY KEY AUTO_INCREMENT,
    Artist varchar(24),
    SongTitle varchar(100),
    Album varchar(28),
    Years varchar(4),
    Peak varchar(10),
    WeeksOnChart varchar(6)
    );

-- creating two indexes for Artist and Years
create index idx_Artist on MusicData(Artist);
create index idx_Years on MusicData(Years);
-- inserts all 200 hit songs into database
insert into MusicData
    (Artist, SongTitle, Album, Years, Peak, WeeksOnChart)
-- 200.
values  ("David Bowie", "Changes", "Hunky Dory", "1971", "59", "0"),
-- 199.
        ("Aerosmith", "Dream On", "Aerosmith", "1973", "6", "0"),
-- 198. 
        ("Marvin Gaye", "Sexual Healing", "Midnight Love & The Sexual Healing Sessions", "1982", "3", "10"),
-- 197.
        ("Ann Peebles", "I Can't Stand the Rain", "I Can't Stand the Rain", "1973", "18", "0"),
-- 196.
        ("James Brown", "Get Up (I Feel Like Being A) Sex Machine", "Single", "1970", "15", "0"),
-- 195.
        ("Patsy Cline", "Crazy", "Showcase", "1961", "2", "0"),
-- 194.
        ("PJ Harvey", "Rid of Me", "Rid of Me", "1993", "3", "0"),
-- 193.
        ("The Rolling Stones", "Wild Horses", "Sticky Fingers", "1971", "28", "0"),
-- 192.
        ("Geto Boys", "Mind Playing Tricks on Me", "We Can't Be Stopped", "1991", "23", "0"),
-- 191. 
        ("Bobbie Gentry", "Ode to Billie Joe", "Ode to Billie Joe", "1967", "1", "0"),
-- 190.
        ("N.W.A", "F tha Police", "Straight Outta Compton", "1988", "25", "0"),
-- 189.
        ("David Bowie", "Space Oddity", "David Bowie (Space Oddity)", "1969", "124", "0"),
-- 188.
        ("The Jimi Hendrix Experience", "Little Wing", "Axis: Bold as Love ", "1967", "N/A", "0"),
-- 187.
        ("Bob Dylan", "Subterranean Homesick Blues", "Bringing It All Back Home", "1965", "39", "0"),     
-- 186.
        ("The Staple Singers", "I'll Take You There", "Be Altitude: Respect Yourself", "1972", "22", "15"),
-- 185
        ("Michael Jackson", "Beat It", "Thriller", "1982", "1", "3"),
-- 184
        ("SinÃ©ad O'Connor", "Nothing Compares 2 U", "I Do Not Want What I Haven't Got", "1990", "43", "0"),
-- 183  
        ("Stevie Wonder", "You Are the Sunshine of My Life", "Talking Book", "1972", "1", "3"),
-- 182
        ("Simon and Garfunkel", "The Sounds of Silence", " Wednesday Morning, 3 A.M. & Sounds of Silence", "1964", "54", "0"),
-- 181
        ("The Byrds", "Eight Miles High", "Fifth Dimension", "1966", "N/A", "0"),
-- 180
        ("Lou Reed", "Walk on the Wild Side", "Transformer", "1972", "16", "0"),
-- 179
        ("Pink Floyd", "Comfortably Numb", " The Wall", "1979", "10", "0"),
-- 178 
        ("Billie Eilish", "Bad Guy", "When We All Fall Asleep, Where Do We Go?", "2019", "1", "19"),
-- 177
        ("Van Halen", "Jump", "Single", "1983", "9", "0"),
-- 176
        ("The Kinks", "You Really Got Me", "Single", "1964", "36", "2"),
-- 175
        ("The Flamingos", "I Only Have Eyes for You", "Single", "1959", "11", "0"),
-- 174
        ("R.E.M", "Radio Free Europe", "Single", "1981", "78", "5"),
-- 173
        ("Television", "Marquee Moon", "Marquee Moon", "1977", "N/A", "0"),
-- 172
        ("Nina Simone", "Mississippi Goddam", "Nina Simone in Concert", "1964", "N/A", "0"),
-- 171
        ("Louis Armstrong", "What a Wonderful World", "Single", "1967", "32", "11"),
-- 170
        ("The Five Satins", "In the Still of the Night", "Single", "1956", "24", "0"),
-- 169
        ("Tom Petty and the Heartbreakers", "American Girl", "Tom Petty and the Heartbreakers", "1976", "N/A", "0"),
-- 168
        ("Dusty Springfield", "Son of a Preacher Man", "Dusty in Memphis", "1968", "10", "0"),
-- 167
        ("Eminem", "Lose Yourself", "8 Mile: Music from and Inspired by the Motion Picture", "2002", "1", "12"),
-- 166
        ("Mott the Hoople", "All the Young Dudes", "All the Young Dudes", "1972", "3", "0"),
-- 165
        ("Hank Williams", "I'm So Lonesome I Could Cry", "Single", "1949", "N/A", "2"),
-- 164
        ("Bob Dylan", "Mr. Tambourine Man", "Bringing It All Back Home", "1965", "1", "0"),
-- 163
        ("Fleetwood Mac", "Landslide", "Fleetwood Mac", "1975", "51", "0"),
-- 162
        ("Nick Drake", "Pink Moon", "Pink Moon", "1972", "N/A", "0"),
-- 161
        ("Madonna", "Into the Groove", "Like a Virgin", "1985", "19", "4"),
-- 160
        ("R.E.M.", "Nightswimming", "Automatic for the People", "1992", "27", "0"),
-- 159
        ("The Who", "Baba O'Riley", "Who's Next", "1971", "80", "0"),
-- 158
        ("The Meters", "Cissy Strut", "The Meters", "1969", "23", "0"),
-- 157
        ("Sonic Youth", "Teenage Riot", "Daydream Nation", "1988", "20", "9"),
-- 156
        ("The Kingsmen", "Louie Louie", "Single", "1963", "2", "16"),
-- 155
        ("The Strokes", "Last Nite", "Is This It", "2001", "N/A", "0"),
-- 154
        ("Howlin' Wolf", "Spoonful", "Single", "1960", "N/A", "0"),
-- 153
        ("Rick James", "Super Freak", "Street Songs", "1981", "16", "0"),
-- 152
        ("Creedence Clearwater Revival", "Proud Mary", "Bayou Country", "1969", "2", "0"),
-- 151
        ("The Shirelles", "Will You Love Me Tomorrow", "Tonight's the Night", "1960", "1", "0"),
-- 150
        ("Green Day", "Basket Case", "Dookie", "1994", "16", "5"),
-- 149
        ("Elton John", "Rocket Man", "Honky ChÃ¢teau", "1972", "6", "0"),
-- 148
        ("Led Zeppelin", "Kashmir", "Physical Graffiti", "1975", "80", "0"),
-- 147
        ("Fats Domino", "Blueberry Hill", "This Is Fats Domino!", "1956", "N/A", "8"),
-- 146
        ("James Taylor", "Fire and Rain", "Sweet Baby James", "1970", "3", "0"),
-- 145
        ("Outkast", "Ms. Jackson", "Stankonia", "2000", "1", "1"),
-- 144
        ("The Rolling Stones", "Jumpin' Jack Flash", "Single", "1968", "3", "4"),
-- 143
        ("The Clash", "London Calling", "London Calling", "1980", "11", "10"),
-- 142
        ("George Jones", "He Stopped Loving Her Today", "I Am What I Am", "1980", "1", "0"),
-- 141
        ("Rod Stewart", "Maggie May", "Every Picture Tells a Story", "1971", "1", "6"),
-- 140
        ("Bob Marley and the Wailers", "No Woman No Cry", "Single", "1975", "38", "2"),
-- 139
        ("Madonna", "Vogue", "Single", "1990", "1", "2"),
-- 138
        ("Blondie", "Heart of Glass", "Parallel Lines", "1979", "18", "0"),
-- 137
        ("Ariana Grande", "Thank U, Next", "Thank U, Next", "2019", "1", "7"),
-- 136
        ("Otis Redding", "Try a Little Tendernes", "Single", "1966", "25", "0"),
-- 135
        ("The Beatles", "She Loves You", "Single", "1964", "3", "31"),
-- 134  
        ("Tina Turner", "What's Love Got to Do With It", "Private Dancer", "1984", "1", "3"),
-- 133
        ("Journey", "Don't Stop Believin", "Escape", "1981", "9", "0"),
-- 132
        ("Eric B. and Rakim,", "Paid in Full", "Paid in Full", "1987", "65", "0"),
-- 131
        ("Ben E. King", "Stand by Me", "Don't Play That Song!", "1961", "20", "6"),
-- 130
        ("Martha and the Vandellas", "Dancing in the Street", "Dance Party", "1964", "2", "4"),
-- 129
        ("Drake feat. Majid Jordan", "Hold On, We're Going Home", "Nothing Was the Same", "2013", "4", "0"),
-- 128
        ("Led Zeppelin", "Whole Lotta Love", "Led Zeppelin II", "1969", "4", "15"),
-- 127
        ("TLC", "Waterfalls", "CrazySexyCool", "1995", "1", "7"),
-- 126
        ("George Michael", "Freedom! '90", "Listen Without Prejudice Vol. 1", "1990", "8", "12"),
-- 125
        ("Sex Pistols", "Anarchy in the U.K.", "Never Mind the Bollocks, Here's the Sex Pistols", "1977", "38", "0"),
-- 124
        ("Buddy Holly", "That'll Be the Day", " The Chirping Crickets ", "1957", "1", "3"),
-- 123
        ("Talking Heads", "This Must Be the Place", "Speaking in Tongues", "1983", "62", "0"),
-- 122
        ("The Impressions", "People Get Ready", "People Get Ready", "1965", "48", "0"),
-- 121
        ("The Beatles", "Let It Be", "Let It Be", "1970", "1", "2"),
-- 120 
        ("X-Ray Spex", "Oh Bondage! Up Yours!", "Single", "1977", "N/A", "0"),
-- 119
        ("Marvin Gaye", "I Heard It Through the Grapevine", "Everybody Needs Love", "1968", "1", "7"),
-- 118
        ("Radiohead", "Creep", "Pablo Honey", "1992", "34", "N/A"),
-- 117
        ("Aretha Franklin", "I Say a Little Prayer", "The Windows of the World", "1968", "4", "1"),
-- 116
        ("Rob Base and DJ E-Z Rock", "It Takes Two", "It Takes Two", "1988", "85", "0"),
-- 115
        ("Etta James", "At Last", "At Last!", "1960", "2", "17"),
-- 114
        ("Britney Spears", "Toxic", "In the Zone", "2003", "9", "2"),
-- 113
        ("Stevie Wonder", "Higher Ground", "Innervisions", "1973", "4", "0"),
-- 112
        ("R.E.M.", "Losing My Religion", "Out of Time", "1991", "4", "21"),
-- 111
        ("Bruce Springsteen", "Thunder Road", "Born to Run", "1975", "N/A", "0"),
-- 110
        ("The Beatles", "Something", "Abbey Road", "1969", "1", "1"),
-- 109
        ("Sly and the Family Stone", "Everyday People", "Single", "1968", "1", "4"),
-- 108
        ("The Cure", "Just Like Heaven", "Kiss Me, Kiss Me, Kiss Me", "1987", "40", "1"),
-- 107
        ("Wu-Tang Clan", "C.R.E.A.M.", "Enter the Wu-Tang (36 Chambers)", "1994", "60", "1"),
-- 106
        ("The Rolling Stones", "Sympathy for the Devil", "Beggars Banquet", "1968", "55", "0"),
-- 105
        ("David Bowie", "Life on Mars?", "Hunky Dory", "1971", "3", "13"),
-- 104
        ("The Jackson 5", "I Want You Back", "Single", "1969", "1", "1"),
-- 103
        ("Alanis Morissette", "You Oughta Know", "Jagged Little Pill", "1995", "6", "8"),
-- 102
        ("Chuck Berry", "Maybelline", "Chuck Berry Is on Top", "1955", "5", "1"),
-- 101
        ("Yeah Yeah Yeahs", "Maps", "Fever to Tell ", "2003", "87", "0"),
-- 100
        ("Bob Dylan", "Blowin' in the Wind", "The Freewheelin' Bob Dylan", "1963", "2", "5"),
-- 99
        ("Bee Gees", "Stayin' Alive", "Saturday Night Fever", "1977", "1", "4"),
-- 98
        ("The Beatles", "In My Life", "Rubber Soul", "1965", "78", "0"),
-- 97
        ("Patti Smith", "Gloria", "Horses", "1975", "N/A", "0"),
-- 96   
        ("Jay-Z", "99 Problems", "The Black Album", "2003", "30", "0"),
-- 95 
        ("Oasis", "Wonderwall", "(What's the Story) Morning Glory?", "1995", "10", "0"),
-- 94
        ("Whitney Houston", "I Will Always Love You", "Jolene", "1992", "1", "14"),
-- 93
        ("Kelly Clarkson", "Since U Been Gone", "Single", "2004", "2", "1"),
-- 92
        ("Little Richard", "Good Golly, Miss Molly", "Single", "1958", "N/A", "0"),
-- 91 
        ("UGK feat. Outkast", "Int'l Players Anthem (I Choose You)", "Single", "2007", "70", "0"),
-- 90
        ("Aretha Franklin", "(You Make Me Feel Like) A Natural Woman", "Single", "1967", "8", "1"),
-- 89
        ("The Beatles", "Hey Jude", "Single", "1968", "1", "14"),
-- 88
        ("Guns N' Roses", "Sweet Child O' Mine", "Single", "1987", "1", "6"),
-- 87
        ("LCD Soundsystem", "All My Friends", "Sound of Silver", "2007", "41", "0"),
-- 86
        ("The Rolling Stones", "Tumbling Dice", "Single", "1972", "7", "8"),
-- 85
        ("Prince", "Kiss", "Single", "1986", "1", "2"),
-- 84
        ("Al Green", "Let's Stay Together", "Single", "1971", "1", "16"),
-- 83
        ("Bob Dylan", "Desolation Row", "Highway 61 Revisited", "1965", "20", "0"),
-- 82
        ("Adele", "Rolling in the Deep", "Single", "2011", "1", "7"),
-- 81
        ("The Velvet Underground", "I'm Waiting for the Man", "The Velvet Underground & Nico", "1967", "N/A", "0"),
-- 80
        ("Ray Charles", "What'd I Say", "Single", "1957", "30", "8"),
-- 79
        ("Amy Winehouse", "Back to Black", "Single", "2006", "5", "0"),
-- 78
        ("The Four Tops", "Reach Out (I'll Be There)", "Single", "1967", "1", "2"),
-- 77
        ("The Modern Lovers", "Roadrunner", "The Modern Lovers", "1976", "N/A", "0"),
-- 76   
        ("Johnny Cash", "I Walk the Line", "Single", "1956", "17", "6"),
-- 75
        ("Pulp", "Common People", "Different Class", "1996", "2", "0"),
-- 74
        ("Leonard Cohen", "Hallelujah", "Various Positions", "1984", "59", "0"),
-- 73
        ("BeyoncÃ©", "Formation", "Lemonade", "2016", "10", "1"),
-- 72
        ("The Beatles", "Yesterday", "Single", "1965", "1", "4"),
-- 71
        ("Tracy Chapman", "Fast Car", "Tracy Chapman", "1988", "N/A", "0"),
-- 70
        ("Elvis Presley", "Suspicious Minds", "Single", "1969", "1", "4"),
-- 69
        ("Taylor Swift", "All Too Well", "Red (Taylor's Version)", "2012", "80", "0"),
-- 68
        ("Chic", "Good Times", "RisquÃ©", "1979", "1", "1"),
-- 67
        ("Bob Dylan", "Tangled Up in Blue", "Blood on the Tracks", "1975", "31", "0"),
-- 66
        ("Simon and Garfunkel", "Bridge Over Troubled Water", "Bridge over Troubled Water", "1970", "40", "17"),
-- 65
        ("Earth, Wind, and Fire", "September", "The Best of Earth, Wind & Fire, Vol. 1", "1978", "8", "0"),
-- 64
        ("Ramones", "Blitzkrieg Bop", "Ramones", "1976", "N/A", "0"),
-- 63
        ("Dolly Parton", "Jolene", "Jolene", "1974", "60", "0"),
-- 62
        ("U2", "One", "Achtung Baby`", "1992", "10", "4"),
-- 61
        ("Led Zeppelin", "Stairway to Heaven", "Led Zeppelin IV", "1971", "17", "1"),
-- 60
        ("Kate Bush", "Running Up That Hill", "Hounds of Love", "1985", "30", "1"),
-- 59
        ("Grandmaster Flash and the Furious Five", "The Message", "The Message", "1982", "62", "1"),
-- 58
        ("The Band", "The Weight", "Music from Big Pink", "1968", "63", "0"),
-- 57
        ("Sly and the Family Stone", "Family Affair", "There's a Riot Goin' On", "1971", "1", "3"),
-- 56
        ("Missy Elliott", "Work It", "Under Construction", "2000", "2", "0"),
-- 55
        ("Madonna", "Like a Prayer", "Like a Prayer", "1989", "1", "3"),
-- 54
        ("Smokey Robinson and the Miracles", "The Tracks of My Tears", "Going to a Go-Go", "1965", "16", "0"),
-- 53
        ("The Beach Boys", "Good Vibrations", "Single", "1966", "N/A", "0"),
-- 52
        ("Donna Summer", "I Feel Love", "I Remember Yesterday", "1977", "6", "4"),
-- 51
        ("Dionne Warwick", "Walk on By", "Make Way for Dionne Warwick", "1964", "6", "0"),
-- 50
        ("Daddy Yankee", "Gasolina", "Barrio Fino", "2010", "31", "1"),
-- 49
        ("Lauryn Hill", "Doo Wop (That Thing)", "The Miseducation of Lauryn Hill", "1998", "1", "2"),
-- 48
        ("Radiohead", "Idioteque", "Kid A", "2000", "N/A", "0"),
-- 47
        ("Elton John", "Tiny Dancer", "Madman Across the Water", "1972", "41", "0"),
-- 46
        ("M.I.A.", "Paper Planes", "Kala", "2008", "4", "0"),
-- 45
        ("Kendrick Lamar", "Alright", "To Pimp a Butterfly", "2015", "81", "0"),
-- 44
        ("Michael Jackson", "Billie Jean", "Thriller", "1982", "1", "3"),
-- 43
        ("The Temptations", "My Girl", "The Temptations Sing Smokey", "1965", "1", "0"),
-- 42
        ("Bob Marley and the Wailers", "Redemption Song", "Uprising", "1980", "N/A", "1"),
-- 41
        ("Joy Division", "Love Will Tear Us Apart", "Single", "1980", "13", "0"),
-- 40
        ("The Jimi Hendrix Experience", "All Along the Watchtower", "John Wesley Harding", "1968", "N/A", "0"),
-- 39
        ("Outkast", "B.O.B.", "Stankonia", "2000", "61", "0"),
-- 38
        ("Otis Redding", "(Sittin' On) the Dock of the Bay", "The Dock of the Bay", "1967", "84", "5"),
-- 37
        ("Prince and the Revolution", "When Doves Cry", "Purple Rain", "1984", "1", "5"),
-- 36
        ("The White Stripes", "Seven Nation Army", "Elephant", "2003", "76", "1"),
-- 35
        ("Little Richard", "Tutti-Frutti", "Here's Little Richard", "1955", "N/A", "0"),
-- 34
        ("James Brown", "Papa's Got a Brand New Bag", "Single", "1966", "8", "8"),
-- 33
        ("Chuck Berry", "Johnny B. Goode", "Chuck Berry Is on Top", "1958", "2", "1"),
-- 32
        ("Notorious B.I.G.", "Juicy", "Ready to Die", "1994", "27", "0"),
-- 31
        ("The Rolling Stones", "(I Can't Get No) Satisfaction", "Single", "1965", "1", "4"),
-- 30
        ("Lorde", "Royals", "Pure Heroine", "2011", "1", "3"),
-- 29
        ("Dr. Dre feat. Snoop Doggy Dogg", "Nuthin' but a G' Thang", "The Chronic", "1992", "1", "0"),
-- 28
        ("Talking Heads", "Once in a Lifetime", "Remain in Light", "1980", "103", "0"),
-- 27
        ("Bruce Springsteen", "Born to Run", "Born to Run", "1975", "23", "0"),
-- 26
        ("Joni Mitchell", "A Case of You", "Blue", "1971", "N/A", "0"),
-- 25
        ("Kanye West feat. Pusha T", "Runaway", "My Beautiful Dark Twisted Fantasy", "2010", "12", "13"),
-- 24
        ("The Beatles", "A Day in the Life", "Sgt. Pepper's Lonely Hearts Club Band", "1967", "N/A", "0"),
-- 23
        ("David Bowie", "Heroes", "Heroes", "1977", "24", "0"),
-- 22
        ("The Ronettes", "Be My Baby", "Single", "1963", "2", "11"),
-- 21
        ("Billie Holiday", "Strange Fruit", "Single", "1939", "N/A", "0"),
-- 20
        ("Robyn", "Dancing on My Own", "Body Talk Pt. 1", "2010", "13", "0"),
-- 19
        ("John Lennon", "Imagine", "Imagine", "1971", "3", "2"),
-- 18
        ("Prince and the Revolution", "Purple Rain", "Purple Rain", "1984", "2", "2"),
-- 17
        ("Queen", "Bohemian Rhapsody", "A Night at the Opera", "1975", "9", "9"),
-- 16
        ("BeyoncÃ© feat. Jay-Z", "Crazy in Love", "Dangerously in Love", "2003", "1", "27"),
-- 15
        ("The Beatles", "I Want to Hold Your Hand", "Single", "1963", "1", "21"),
-- 14
        ("The Kinks", "Waterloo Sunset", "Something Else by the Kinks", "1967", "2", "0"),
-- 13
        ("The Rolling Stones", "Gimme Shelter", "Let It Bleed", "1969", "N/A", "0"),
-- 12
        ("Stevie Wonder", "Superstition", "Talking Book", "1972", "1", "4"),
-- 11
        ("The Beach Boys", "God Only Knows", "Pet Sounds", "1966", "39", "0"),
-- 10
        ("Outkast", "Hey Ya!", "Speakerboxxx/The Love Below", "2003", "1", "3"),
-- 9
        ("Fleetwood Mac", "Dreams", "Rumours", "1977", "1", "8"),
-- 8
        ("Missy Elliott", "Get Ur Freak On", "Miss E... So Addictive", "2001", "7", "0"),
-- 7
        ("The Beatles", "Strawberry Fields Forever", "Single", "1967", "8", "1"),
-- 6
        ("Marvin Gaye", "What's Going On", "What's Going On", "1971", "2", "5"),
-- 5
        ("Nirvana", "Smells Like Teen Spirit", "Nevermind", "1991", "7", "184"),
-- 4
        ("Bob Dylan", "Like a Rolling Stone", "Highway 61 Revisited", "1965", "2", "12"),
-- 3
        ("Sam Cooke", "A Change Is Gonna Come", "Ain't That Good News", "1964", "31", "0"),
-- 2
        ("Public Enemy", "Fight the Power", "Fear of a Black Planet", "1989", "1", "0"),
-- 1
        ("Aretha Franklin", "Respect", "Single", "1967", "1", "8");
        
-- counts how many hit songs were made in the 1970's
SELECT COUNT(Years) as 70hits_______ from MusicData WHERE years like '197_';
-- counts how many hit songs were made in the 1980's
SELECT COUNT(Years) as 80hits_______ from MusicData WHERE years like '198_';
-- counts how many songs peaked at the top 2
SELECT COUNT(Peak) as peakedAt2_______ from MusicData WHERE Peak = '2';
-- counts how many songs were a hit for over 10 weeks
SELECT COUNT(WeeksOnChart) as 10WeekHits_______ from MusicData WHERE WeeksOnChart > '10';
-- Displays all the songs that have love in the title
SELECT SongTitle as LoveSongs_______ from MusicData WHERE SongTitle like '%love%';
-- Displays all the songs made by Led Zeppelin
SELECT Artist as LedZeppelinSongs_______ from MusicData WHERE Artist = 'Led Zeppelin';
-- displays all the songs that were no.1 for 1983(none)
SELECT Artist as 1983N01_______ from MusicData WHERE years = '1983' AND Peak = '1';
-- displays how many times songs were not peak no.1 for 1976
SELECT Artist as 1976NN01_______ from MusicData WHERE years = '1976' AND Peak != '1';
-- counts how many time jackson made it to the top 200
SELECT COUNT(Artist) as Top200Jackson_______ from MusicData WHERE Artist = 'Michael Jackson';
-- displays all the 60's hits 
SELECT SongTitle as 60hits_______ from MusicData WHERE years like '196_';
-- displays all the songs with Rock in the name
SELECT SongTitle as RockSongs_______ from MusicData WHERE SongTitle like '%Rock %';
-- displays all the songs that were hits in the 2000's
SELECT SongTitle as 00hits_______ from MusicData WHERE years like '20__';
-- counts how many songs were a hit in the 2000's
SELECT COUNT(Years) as 00hitsamount_______ from MusicData WHERE years like '20__';
-- Displays all the songs that peaked below 2
SELECT SongTitle as PeaksBelow2_______ from MusicData WHERE Peak < '2';
-- displays all the times Elvis presley was No 1
SELECT SongTitle as ElvisHits_______ from MusicData WHERE Peak = '1' AND Artist = 'Elvis Presley';