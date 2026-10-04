CREATE TABLE user_videos(
  id INTEGER PRIMARY key AUTOINCREMENT
);

CREATE TABLE users(
  id INTEGER PRIMARY key AUTOINCREMENT,
  user_videos_id INTEGER,
  FOREIGN key (user_videos_id) REFERENCES user_videos(id)
);

CREATE TABLE user(
  id INTEGER PRIMARY key AUTOINCREMENT
);

CREATE TABLE videos(
  id INTEGER PRIMARY key AUTOINCREMENT,
  user_videos_id INTEGER,
  FOREIGN key (user_videos_id) REFERENCES user_videos(id)
);

CREATE TABLE video(
  id INTEGER PRIMARY key AUTOINCREMENT
);

CREATE TABLE watch_history(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_videos_id INTEGER,
  FOREIGN KEY (user_videos_ID) REFERENCES user_videos(id)
);

CREATE TABLE analytics_videos(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  videos_id INTEGER,
  FOREIGN KEY (videos_id) REFERENCES videos(id)
);

create TABLE likes_video(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER NOT NULL,
  videos_id integer not NULL,
  FOREIGN KEY(videos_id) REFERENCES videos(id),
  FOREIGN KEY(user_id) REFERENCES user(id)
);

CREATE table comments(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  videos_id INTEGER,
  user_id INTEGER,
  content TEXT NOT NULL,
  FOREIGN KEY (videos_id) REFERENCES videos(id)
  FOREIGN KEY(user_id) REFERENCES user(id)
);

create TABLE categories(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name varchar(100) NOT NULL UNIQUE,
   FOREIGN KEY(videos_id) REFERENCES videos(id),
);

CREATE TABLE playlist(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id integer,
  FOREIGN KEY(user_id) REFERENCES user(id)
);

CREATE TABLE departament(
  id INTEGER PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE moderators(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  video_id integer,
  FOREIGN KEY(video_id) REFERENCES video(id)
  
);

CREATE TABLE user_notification(
  user_id integer primary key AUTOINCREMENT,
  FOREIGN key (user_id) REFERENCES user(id)
);

CREATE TABLE user_subscribe(
  user_notification integer primary key AUTOINCREMENT,
  FOREIGN key (user_notification) REFERENCES user_notification(id)
);

create table channal(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
);

create table user_channal(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
);
