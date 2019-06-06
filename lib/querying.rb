def select_books_titles_and_years_in_first_series_order_by_year
  "select books.title, books.year from books
  where books.series_id = 1
  order by books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  "select characters.name, characters.motto from characters
  order by characters.motto asc
  limit 1"
end


def select_value_and_count_of_most_prolific_species
  "select characters.species, COUNT(characters.species) as total from characters
  group by characters.species
  order by total desc
  limit 1"
end

def select_name_and_series_subgenres_of_authors
  "select authors.name, subgenres.name from authors
  join series on series.author_id = authors.id 
  join subgenres on subgenres.id = series.subgenre_id
  "
end

def select_series_title_with_most_human_characters
  "select series.title from series
  join characters on characters.series_id = series.id
  group by characters.species
  order by characters.species desc
  limit 1"
end

def select_character_names_and_number_of_books_they_are_in
  "select characters.name, COUNT(book_id) as total from characters
  join character_books on character_books.character_id = characters.id
  join books on books.id = character_books.book_id
  group by characters.name
  order by total desc"
end


#INSERT INTO series (id, title, author_id, subgenre_id) VALUES (1, "A Song of Ice and Fire", 1, 1);
#INSERT INTO subgenres (id, name) VALUES (1, "medieval");
#INSERT INTO authors (id, name) VALUES (1, "George R. R. Martin");
#INSERT INTO books (id, title, year, series_id) VALUES (1, "Game of Thrones", 1996, 1);
#INSERT INTO characters (id, name, motto, species, author_id, series_id) VALUES (1, "Lady", "Woof Woof", "direwolf", 1, 1);
#INSERT INTO character_books (id, book_id, character_id) VALUES (1, 1, 1);