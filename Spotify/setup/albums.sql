CREATE TABLE Albums (
    album_id INT PRIMARY KEY,
    album_name VARCHAR(255) NOT NULL,
    release_year INT
);

INSERT INTO Albums (album_id, album_name, release_year) VALUES (1, 'Parachutes', 2000), (2, '25', 2015), (3, 'Divide', 2017);

