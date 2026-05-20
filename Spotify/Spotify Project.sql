create database SqlProject;
show databases;
use SqlProject;

#CREATE TABLES
--User table

CREATE TABLE Users (
  user_id INT PRIMARY KEY,
  username VARCHAR(50),
  email VARCHAR(100),
  password VARCHAR(100),
  registration_date DATE
);

-- Playlist table
CREATE TABLE Playlists (
  playlist_id INT PRIMARY KEY,
  playlist_name VARCHAR(100),
  user_id INT,
  created_at DATE,
  FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Track table
CREATE TABLE Tracks (
  track_id INT PRIMARY KEY,
  track_name VARCHAR(100),
  artist_name VARCHAR(100),
  album_name VARCHAR(100),
  duration INT,
  release_date DATE
);

-- PlaylistTrack table
CREATE TABLE PlaylistTracks (
  playlist_id INT,
  track_id INT,
  position INT,
  FOREIGN KEY (playlist_id) REFERENCES Playlists(playlist_id),
  FOREIGN KEY (track_id) REFERENCES Tracks(track_id)
);

#INSERT VALUES IN TABLES
-- Insert values into Users table
INSERT INTO Users (user_id, username, email, password, registration_date)
VALUES
  (1, 'Riyan', 'Riyan@gmail.com', 'password123', '2022-01-10'),
  (2, 'Sanjay', 'Sanjay@yahoo.com', 'password456', '2022-02-15'),
  (3, 'Amit', 'Amit@gmail.com', 'password789', '2022-03-20'),
  (4, 'Sheetal', 'Sheetal@yahoo.com', 'password12', '2022-04-25'),
  (5, 'Maahir', 'Maahir@gmail.com', 'password34', '2022-05-30'),
  (6, 'Prayan', 'Prayan@gmail.com', 'password56', '2022-06-05'),
  (7, 'Samarth', 'Samarth@yahoo.com', 'password78', '2022-07-10'),
  (8, 'Briti', 'Briti@yahoo.com', 'password90', '2022-08-15'),
  (9, 'Aabheri', 'Aabheri@gmail.com', 'password123', '2022-09-20'),
  (10, 'Anvika', 'Anvika@yahoo.com', 'password12', '2022-10-25');

-- Insert values into Playlists table
INSERT INTO Playlists (playlist_id, playlist_name, user_id, created_at)
VALUES
  (1, 'My Favorites', 1, '2022-01-15'),
  (2, 'Road Trip Mix', 2, '2022-02-20'),
  (3, 'Party Hits', 3, '2022-03-25'),
  (4, 'Relaxing Melodies', 4, '2022-04-30'),
  (5, 'Late Night Vibes', 5, '2022-05-05'),
  (6, 'Workout Pump', 6, '2022-06-10'),
  (7, 'Chill Beats', 7, '2022-07-15'),
  (8, 'Study Jams', 8, '2022-08-20'),
  (9, 'Throwback Tunes', 9, '2022-09-25'),
  (10, 'Weekend Grooves', 10, '2022-10-30');

-- Insert values into Tracks table
INSERT INTO Tracks (track_id, track_name, artist_name, album_name, duration, release_date)
VALUES
  (1, 'Shape of You', 'Ed Sheeran', 'Ã· (Divide)', 233, '2017-01-06'),
  (2, 'Blinding Lights', 'The Weeknd', 'After Hours', 200, '2019-11-29'),
  (3, 'Dance Monkey', 'Tones and I', 'The Kids Are Coming', 209, '2019-08-29'),
  (4, 'Bad Guy', 'Billie Eilish', 'When We All Fall Asleep, Where Do We Go?', 194, '2019-03-29'),
  (5, 'Rockstar', 'Post Malone ft. 21 Savage', 'Beerbongs & Bentleys', 218, '2017-09-15'),
  (6, 'Happier', 'Ed Sheeran', 'Ã· (Divide)', 207, '2017-01-06'),
  (7, 'Save Your Tears', 'The Weeknd', 'After Hours', 223, '2019-11-29'),
  (8, 'Never Seen the Rain', 'Tones and I', 'The Kids Are Coming', 186, '2019-08-29'),
  (9, "When the Party's Over", 'Billie Eilish', 'When We All Fall Asleep', 194, '2019-03-29'),
  (10, 'Circles', 'Post Malone', "Hollywood's Bleeding", 215, '2019-09-03'),
  (11, 'Thinking Out Loud', 'Ed Sheeran', 'x', 281, '2014-06-20'),
  (12, "Can't Feel My Fac", 'The Weeknd', 'Beauty Behind the Madness', 213, '2015-06-08'),
  (13, 'Dance Monkey', 'Tones and I', 'The Kids Are Coming', 209, '2019-08-29'),
  (14, 'Ocean Eyes', 'Billie Eilish', "Don't Smile at Me", 180, '2016-11-18'),
  (15, 'Sunflower', 'Post Malone ft. Swae Lee', 'Spider-Man: Into the Spider-Verse', 158, '2018-10-18'),
  (16, 'Photograph', 'Ed Sheeran', 'x', 258, '2014-06-20'),
  (17, 'Starboy', 'The Weeknd ft. Daft Punk', 'Starboy', 230, '2016-11-24'),
  (18, 'Dance Monkey', 'Tones and I', 'The Kids Are Coming', 209, '2019-08-29'),
  (19, 'Lovely', 'Billie Eilish ft. Khalid', '13 Reasons Why (Season 2)', 200, '2018-04-19'),
  (20, 'Better Now', 'Post Malone', 'Beerbongs & Bentleys', 231, '2018-04-27');

  
-- Insert values into PlaylistTracks table
INSERT INTO PlaylistTracks (playlist_id, track_id, position)
VALUES
  (1, 1, 1),
  (1, 2, 2),
  (1, 3, 3),
  (1, 11, 4),
  (1, 13, 5),
  (2, 4, 1),
  (2, 5, 2),
  (2, 12, 3),
  (2, 14, 4),
  (3, 1, 1),
  (3, 3, 2),
  (3, 5, 3),
  (4, 2, 1),
  (4, 4, 2),
  (5, 1, 1),
  (5, 3, 2),
  (5, 5, 3),
  (5, 15, 4),
  (5, 16, 5),
  (5, 17, 6),
  (6, 2, 1),
  (6, 4, 2),
  (7, 1, 1),
  (7, 5, 2),
  (7, 18, 3),
  (8, 3, 1),
  (8, 4, 2),
  (9, 1, 1),
  (9, 2, 2),
  (9, 3, 3),
  (9, 4, 4),
  (9, 5, 5),
  (9, 19, 6),
  (9, 20, 7),
  (10, 1, 1),
  (10, 3, 2),
  (10, 5, 3);


select * from users;
select * from Playlists;
select * from Tracks;
select * from PlaylistTracks;
alter table Tracks modify column release_date Date;

#1.Find all the distinct album names
select distinct album_name from tracks;

#2.Who is the artist of song 'Never Seen the Rain'?
select track_name, artist_name from tracks where track_name = 'Never Seen the Rain';

#3.Name all the user & email, who have registered with gmail id.
select username, email from users where email like '%gmail.com';

#4.List the name of users along with registration dates, who have registered after April-22.
select * from users;
select username, registration_date from users where registration_date < '2022-04-22';

#5Extract the name of tracks, artists, albums and release dates for tracks released in year 2017
select track_name, artist_name, album_name, year(release_date) Released_year from tracks where year(release_date) = 2017;

#6.Find the details of the users who have registed in between may and august.
select MONTH(registration_date) from users;
select *,MONTH(registration_date) registrations from users where MONTH(registration_date) between '5' and '8';

#7.Count the number of playlists created by each user.
select * from users;
select * from playlists;

select
     users.user_id Users,
     count(playlists.playlist_id) Playlists_ID
from users inner join playlists
on users.user_id = playlists.user_id
group by Users;

#8.Find the track names and their durations for a specific album in the Tracks table.
select distinct album_name Album_name, duration from tracks;

#9.Calculate the average duration of tracks in the Tracks table.
select * from tracks;
select track_name, avg(duration) AVG_Duration from tracks group by track_name;

#10.How many users have registered with yahoo.com id?
select * from users;
#approache 1
select username, email from users where email like "%@yahoo.com";
#approach 2
select username, email from users where email regexp "@yahoo.com$";

#11. Find the playlist names and the number of tracks in each playlist created by users whose email addresses end with '@gmail.com'.
select * from users;
select * from Playlists;
select * from Tracks;
select * from PlaylistTracks;

select 
     playlists.playlist_name Playlistname, 
     count(PlaylistTracks.track_id) Tracks,
     users.username createdby,
     users.email EmailId
from playlists inner join users
on users.user_id = playlists.user_id
inner join playlisttracks 
on playlists.playlist_id = playlisttracks.playlist_id
where users.email like '%@gmail.com'
group by Username, EmailId, Playlistname;

#12.Write a query to retrieve the usernames and email addresses of users who have created playlists with more than 5 tracks and 
#   an average track duration greater than 200 seconds.
select * from users;
select * from Playlists;
select * from Tracks;
select * from PlaylistTracks;

select 
    users.username Users,
    users.email Email,
    playlists.playlist_id Playlist,
    round(avg(Tracks.duration),2) AVG_Duration
from users join playlists on users.user_id = playlists.user_id
           join PlaylistTracks on playlists.playlist_id = PlaylistTracks.playlist_id
           join Tracks on Tracks.track_id = playlisttracks.track_id 
           group by users.username, users.email, playlists.playlist_id
           having count(playlists.playlist_id) >5 and avg(Tracks.duration) > 200 

#13.Find the track and artist names of the tracks that have a duration greater than the average duration of all tracks in the 'Tracks' table.
select * from users;
select * from Playlists;
select * from Tracks;
select * from PlaylistTracks;
#approach 1
select avg(duration) from tracks; #212.4
select track_name, artist_name, avg(duration) from tracks group by track_name, artist_name having avg(duration) > '212.4';
#approach 2
select track_name, artist_name, duration from tracks where duration > (select avg(duration) from tracks);

#14.Find the users who have created playlists with tracks from all albums released in a specific year.
select * from users;
select * from Playlists;
select * from Tracks;
select * from PlaylistTracks;

select 
     distinct users.username user,
     users.user_id Id,
     playlists.playlist_name Playlists,
     year(tracks.release_date) year
from users join playlists on users.user_id = playlists.user_id 
           join PlaylistTracks on playlists.playlist_id = playlisttracks.playlist_id 
           join tracks on tracks.track_id  = PlaylistTracks.track_id;

#15 Name of playlist and their total durations, sorted by the number of tracks in descending order.
select * from users;
select * from Playlists;
select * from Tracks;
select * from PlaylistTracks;


select 
    Playlists.playlist_name PlaylistName,
    count(tracks.track_id) No_of_Tracks,
    sum(Tracks.duration) TotalDuration
from playlists join playlisttracks on playlists.playlist_id  = playlisttracks.playlist_id
               join tracks on tracks.track_id = playlisttracks.track_id
group by Playlists.playlist_name order by No_of_Tracks desc;





#16.Find the playlists that have tracks with a duration longer than the average duration of all tracks.
select * from users;
select * from Playlists;
select * from Tracks;
select * from PlaylistTracks;

select 
      Playlists.playlist_name PlaylistName,
      tracks.duration Avg_Duration
from playlists join playlisttracks on playlists.playlist_id = playlisttracks.playlist_id 
               join tracks on tracks.track_id = playlisttracks.track_id
where tracks.duration > (select avg (tracks.duration)from tracks); 








#17 Find the top 3 playlists with the most tracks.
select * from Playlists;
select * from Tracks;
select * from PlaylistTracks;

select 
     Playlists.playlist_name Playlistname,
     Tracks.track_id Tracks
from playlists join playlisttracks on playlists.playlist_id = playlisttracks.playlist_id 
               join tracks on tracks.track_id = playlisttracks.track_id order by Tracks desc limit 3;







#18.Calculate the average track duration for each user and display the results in descending order.
select * from users;
select * from Playlists;
select * from Tracks;
select * from PlaylistTracks;

select 
      users.username Username,
      round(avg(tracks.duration),2) AVG_duration
from users join playlists on users.user_id = playlists.user_id 
           join PlaylistTracks on playlists.playlist_id = playlisttracks.playlist_id 
           join tracks on tracks.track_id  = playlisttracks.track_id
group by users.username order by AVG_duration desc;







#19.Find the track names and artist names of the tracks that are included in at least two different playlists.
select * from Playlists;
select * from Tracks;
select * from PlaylistTracks;

select 
      tracks.track_name Tracks,
      tracks.artist_name Artist,
      Playlists.playlist_id Playlist, 
      Playlists.playlist_name Playlist_name
from tracks join playlisttracks on tracks.track_id = playlisttracks.track_id 
            join playlists on playlists.playlist_id = playlisttracks.playlist_id 
            group by tracks.track_name, tracks.artist_name, Playlists.playlist_id 
            having count(distinct Playlists.playlist_id) and playlist = '2';


#20. Find the playlist names and the total duration of each playlist. 
#    Include only the playlists created by users who registered in the year 2022.

select * from users;
select * from Playlists;
select * from Tracks;
select * from PlaylistTracks;

select 
     users.user_id,
     year(users.registration_date) Registered_year, 
     playlists.playlist_name Playlist,
     sum(tracks.duration) Totalduration
from playlists join users on playlists.user_id = users.user_id 
               join playlisttracks on playlists.playlist_id = playlisttracks.playlist_id 
               join tracks on tracks.track_id = playlisttracks.track_id
               group by users.user_id, playlists.playlist_name;


#21.Find the track names and artist names of the tracks that are included in playlists created by users 
#   who registered before the average registration date of all users.
select * from users;
select * from Playlists;
select * from Tracks;
select * from PlaylistTracks;

select 
      tracks.track_name Track_name,
      tracks.artist_name Artist,
      users.registration_date Registration_date
from tracks join playlisttracks on tracks.track_id = playlisttracks.track_id 
            join playlists on playlists.playlist_id = playlisttracks.playlist_id 
            join users on users.user_id = playlists.user_id 
            where users.registration_date < (select avg(registration_date) from users)
            group by tracks.track_name, tracks.artist_name, users.registration_date;
            
#22.Use subquery to retrieve the names of users who have created playlists containing tracks from both the album 'After Hours' by 
#   The Weeknd and the album 'When We All Fall Asleep, Where Do We Go?' by Billie Eilish.
select * from users;
select * from Playlists;
select * from Tracks;
select * from PlaylistTracks;

select 
     distinct users.username Users
     from users join playlists on users.user_id = playlists.user_id  
           join playlisttracks on playlists.playlist_id = playlisttracks.playlist_id 
           join tracks on tracks.track_id = playlisttracks.track_id
           where tracks.album_name in ('When We All Fall Asleep, Where Do We Go?' ,'After Hours'); 

#23.Write a SQL query to extract the name of top 3 users with the highest average track duration for their playlists.
select * from users;
select * from Playlists;
select * from Tracks;
select * from PlaylistTracks;

select 
      users.username Users,
      playlists.playlist_name Playlist,
      max(tracks.duration) Highestduration 
from users join playlists on users.user_id = playlists.user_id 
           join playlisttracks on playlists.playlist_id = playlisttracks.playlist_id 
           join tracks on tracks.track_id = playlisttracks.track_id 
           group by users.username, playlists.playlist_name order by Highestduration desc limit 3;

#24. Find the tracks that have a duration greater than the average duration of all tracks and rank them within their respective albums.
select * from Tracks;
select *, rank()over(order by album_name desc) Ranking from tracks where duration > (select avg(duration) from tracks);

#25.Name the playlists along with the total number of tracks and the rank of the playlist based on the number of tracks.
select * from Playlists;
select * from Tracks;
select * from PlaylistTracks;

select 
      Playlist_name,
      rank() over (order by Total_track desc) Playlist_rank 
      from(
select 
      Playlists.playlist_name Playlist_name,
      sum(tracks.track_id) Total_track
from playlists join playlisttracks on playlists.playlist_id = playlisttracks.playlist_id 
               join tracks on tracks.track_id = playlisttracks.track_id 
               group by Playlist_name) as Playlist_rank;


#26.Find the users who have created playlists with the highest number of tracks from a specific artist.
select * from users;
select * from Playlists;
select * from Tracks;
select * from PlaylistTracks;

select 
     users.username user,
     Playlists.playlist_name Playlist,
     tracks.track_id HighestTrack,
     tracks.artist_name Artist
from users join playlists on users.user_id = playlists.playlist_id 
           join playlisttracks on playlists.playlist_id = playlisttracks.playlist_id 
           join tracks on tracks.track_id = playlisttracks.track_id
  where tracks.track_id = (select max(track_id) from tracks); 

#27.Write a SQL query to retrieve the topmost users who have created playlists with the 
#   highest number of unique tracks from a specific artist.
select * from users;
select * from Playlists;
select * from Tracks;
select * from PlaylistTracks;

select 
     tracks.track_name,
     tracks.track_id, 
     users.username Users,
     Tracks.artist_name Artist
     from users join playlists on users.user_id = playlists.playlist_id 
           join playlisttracks on playlists.playlist_id  = playlisttracks.playlist_id 
           join tracks on tracks.track_id = playlisttracks.track_id;

#28.Find the tracks that have a duration greater than the average duration of all tracks in their respective albums.
select * from users;
select * from Playlists;
select * from Tracks;
select * from PlaylistTracks;

select track_id, track_name, album_name, Duration from tracks where duration > (select avg (duration) from tracks);

#29.Find name of the playlists along with the user who created them, sorted by the number of tracks in descending order 
#   and the username in ascending order.
select * from users;
select * from Playlists;
select * from Tracks;
select * from PlaylistTracks;

select 
     users.username Users,
     Playlists.playlist_name Playlists,
     count(tracks.track_id) Tracks
from users join playlists on users.user_id = playlists.user_id 
           join playlisttracks on playlists.playlist_id = playlisttracks.playlist_id 
           join tracks on tracks.track_id = playlisttracks.track_id 
           group by users.username, Playlists.playlist_name 
           order by Tracks desc, Users asc ;
#30. Write a SQL query to retrieve the playlists along with the user who created them, 
#    and the position of the track with the longest duration within each playlist.

select * from users;
select * from Playlists;
select * from Tracks;
select * from PlaylistTracks;

select 
     Playlists.playlist_name Playlists,
     users.username createdby,
     max(tracks.duration) Duration
from users join playlists on users.user_id = playlists.user_id 
           join playlisttracks on playlists.playlist_id = playlisttracks.playlist_id 
           join tracks on tracks.track_id = playlisttracks.track_id
           group by users.username, Playlists.playlist_name  ; 
      




























           
         
  






