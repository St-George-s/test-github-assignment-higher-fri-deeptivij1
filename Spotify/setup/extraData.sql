INSERT INTO Artists (artist_id, artist_name)
VALUES
(4, 'Billie Eilish'),
(5, 'Lizzo'),
(6, 'Harry Styles'),
(7, 'The Weeknd'),
(8, 'Ariana Grande'),
(9, 'Post Malone'),
(10, 'Dua Lipa'),
(11, 'Travis Scott'),
(12, 'Kendrick Lamar'),
(13, 'Taylor Swift'),
(14, 'Shawn Mendes'),
(15, 'Cardi B'),
(16, 'Halsey'),
(17, 'Bruno Mars'),
(18, 'Doja Cat'),
(19, 'Bad Bunny'),
(20, 'J Balvin'),
(21, 'Khalid'),
(22, 'Camila Cabello'),
(23, 'Lewis Capaldi'),
(24, 'Sam Smith'),
(25, 'Lil Nas X'),
(26, 'Marshmello'),
(27, 'Imagine Dragons'),
(28, 'Maroon 5'),
(29, 'Tones and I'),
(30, 'SZA'),
(31, 'Olivia Rodrigo'),
(32, 'Justin Bieber'),
(33, 'Lady Gaga');

INSERT INTO Albums (album_id, album_name, release_year)
VALUES
(4, 'When We All Fall Asleep, Where Do We Go?', 2019), -- Billie Eilish
(5, 'Cuz I Love You', 2019), -- Lizzo
(6, 'Fine Line', 2019), -- Harry Styles
(7, 'After Hours', 2020), -- The Weeknd
(8, 'Thank U, Next', 2019), -- Ariana Grande
(9, 'Hollywood’s Bleeding', 2019), -- Post Malone
(10, 'Future Nostalgia', 2020), -- Dua Lipa
(11, 'Astroworld', 2018), -- Travis Scott
(12, 'DAMN.', 2017), -- Kendrick Lamar
(13, 'Lover', 2019), -- Taylor Swift
(14, 'Shawn Mendes', 2018), -- Shawn Mendes
(15, 'Invasion of Privacy', 2018), -- Cardi B
(16, 'Manic', 2020), -- Halsey
(17, '24K Magic', 2016), -- Bruno Mars
(18, 'Hot Pink', 2019), -- Doja Cat
(19, 'YHLQMDLG', 2020), -- Bad Bunny
(20, 'Vibras', 2018), -- J Balvin
(21, 'Free Spirit', 2019), -- Khalid
(22, 'Romance', 2019), -- Camila Cabello
(23, 'Divinely Uninspired To A Hellish Extent', 2019), -- Lewis Capaldi
(24, 'Love Goes', 2020), -- Sam Smith
(25, 'MONTERO', 2021), -- Lil Nas X
(26, 'Joytime III', 2019), -- Marshmello
(27, 'Evolve', 2017), -- Imagine Dragons
(28, 'Red Pill Blues', 2017), -- Maroon 5
(29, 'The Kids Are Coming', 2019), -- Tones and I
(30, 'Ctrl', 2017), -- SZA
(31, 'SOUR', 2021), -- Olivia Rodrigo
(32, 'Changes', 2020), -- Justin Bieber
(33, 'Chromatica', 2020); -- Lady Gaga

INSERT INTO Genres (genre_id, genre_name)
VALUES
(4, 'Electropop'),
(5, 'Indie Pop'),
(6, 'Contemporary R&B'),
(7, 'Funk'),
(8, 'Soul'),
(9, 'Pop Rock'),
(10, 'Alternative'),
(11, 'Trap'),
(12, 'Dance'),
(13, 'Synth-Pop'),
(14, 'Country'),
(15, 'Reggaeton'),
(16, 'Latin Trap'),
(17, 'Latin'),
(18, 'Hip-Hop'),
(19, 'Neo Soul'),
(20, 'EDM');

-- Updating tracks with correct genre_id
INSERT INTO Tracks (track_id, track_name, artist_id, album_id, genre_id, duration_ms)
VALUES
-- Billie Eilish - When We All Fall Asleep, Where Do We Go?
(4, 'bad guy', 4, 4, 4, 194000), -- Electropop
(5, "when the party's over", 4, 4, 5, 196000), -- Indie Pop

-- Lizzo - Cuz I Love You
(6, 'Juice', 5, 5, 6, 210000), -- Contemporary R&B
(7, 'Truth Hurts', 5, 5, 7, 173000), -- Funk

-- Harry Styles - Fine Line
(8, 'Adore You', 6, 6, 9, 207000), -- Pop Rock
(9, 'Watermelon Sugar', 6, 6, 10, 174000), -- Alternative

-- The Weeknd - After Hours
(10, 'Blinding Lights', 7, 7, 13, 200000), -- Synth-Pop
(11, 'In Your Eyes', 7, 7, 6, 239000), -- Contemporary R&B

-- Ariana Grande - Thank U, Next
(12, '7 rings', 8, 8, 1, 179000), -- Pop
(13, 'thank u, next', 8, 8, 1, 207000), -- Pop

-- Post Malone - Hollywood’s Bleeding
(14, 'Circles', 9, 9, 1, 215000), -- Pop
(15, 'Goodbyes', 9, 9, 18, 175000), -- Hip-Hop

-- Dua Lipa - Future Nostalgia
(16, "Don't Start Now", 10, 10, 12, 183000), -- Dance
(17, 'Physical', 10, 10, 12, 193000), -- Dance

-- Travis Scott - Astroworld
(18, 'SICKO MODE', 11, 11, 11, 312000), -- Trap
(19, 'STARGAZING', 11, 11, 11, 270000), -- Trap

-- Kendrick Lamar - DAMN.
(20, 'HUMBLE.', 12, 12, 18, 177000), -- Hip-Hop
(21, 'DNA.', 12, 12, 18, 185000), -- Hip-Hop

-- Taylor Swift - Lover
(22, 'Lover', 13, 13, 1, 221000), -- Pop
(23, 'ME!', 13, 13, 14, 193000), -- Country

-- Shawn Mendes - Shawn Mendes
(24, 'In My Blood', 14, 14, 9, 211000), -- Pop Rock
(25, 'Lost In Japan', 14, 14, 9, 203000), -- Pop Rock

-- Cardi B - Invasion of Privacy
(26, 'I Like It', 15, 15, 18, 253000), -- Hip-Hop
(27, 'Bodak Yellow', 15, 15, 18, 217000), -- Hip-Hop

-- Halsey - Manic
(28, 'Without Me', 16, 16, 4, 202000), -- Electropop
(29, 'You should be sad', 16, 16, 10, 207000), -- Alternative

-- Bruno Mars - 24K Magic
(30, '24K Magic', 17, 17, 7, 225000), -- Funk
(31, 'Thats What I Like', 17, 17, 6, 206000), -- Contemporary R&B

-- Doja Cat - Hot Pink
(32, 'Say So', 18, 18, 1, 209000), -- Pop
(33, 'Juicy', 18, 18, 18, 197000), -- Hip-Hop

-- Bad Bunny - YHLQMDLG
(34, 'Yo Perreo Sola', 19, 19, 16, 172000), -- Latin Trap
(35, 'La Dificil', 19, 19, 15, 175000), -- Reggaeton

-- J Balvin - Vibras
(36, 'Mi Gente', 20, 20, 15, 189000), -- Reggaeton
(37, 'Ahora', 20, 20, 17, 194000), -- Latin

-- Khalid - Free Spirit
(38, 'Talk', 21, 21, 6, 198000), -- Contemporary R&B
(39, 'Better', 21, 21, 6, 229000), -- Contemporary R&B

-- Imagine Dragons - Evolve
(40, 'Believer', 27, 27, 2, 204000), -- Rock
(41, 'Thunder', 27, 27, 2, 187000), -- Rock

-- Maroon 5 - Red Pill Blues
(42, 'Girls Like You', 28, 28, 1, 235000), -- Pop
(43, 'What Lovers Do', 28, 28, 1, 199000), -- Pop

-- Tones and I - The Kids Are Coming
(44, 'Dance Monkey', 29, 29, 12, 209000), -- Dance
(45, 'Never Seen The Rain', 29, 29, 12, 194000), -- Dance

-- SZA - Ctrl
(46, 'Love Galore', 30, 30, 6, 244000), -- Contemporary R&B
(47, 'The Weekend', 30, 30, 6, 242000), -- Contemporary R&B

-- Olivia Rodrigo - SOUR
(48, 'drivers license', 31, 31, 1, 242000), -- Pop
(49, 'good 4 u', 31, 31, 1, 178000), -- Pop

-- Justin Bieber - Changes
(50, 'Yummy', 32, 32, 6, 210000), -- Contemporary R&B
(51, 'Intentions', 32, 32, 6, 198000), -- Contemporary R&B

-- Lady Gaga - Chromatica
(52, 'Rain On Me', 33, 33, 4, 182000), -- Electropop
(53, 'Stupid Love', 33, 33, 4, 196000); -- Electropop
