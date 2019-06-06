create table series (
    id INTEGER primary key,
    title TEXT,
    author_id INTEGER,
    subgenre_id INTEGER
);

create table subgenres (
    id INTEGER primary key,
    name INTEGER
);

create table authors (
    id INTEGER primary key,
    name INTEGER
);

create table books (
    id INTEGER primary key,
    title TEXT,
    year INTEGER,
    series_id INTEGER
);

create table characters (
    id INTEGER primary key,
    name TEXT,
    motto TEXT,
    species TEXT,
    author_id INTEGER,
    series_id INTEGER
);

create table character_books (
    id INTEGER primary key,
    book_id INTEGER,
    character_id INTEGER
);