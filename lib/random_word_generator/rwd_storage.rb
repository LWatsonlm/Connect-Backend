

def initialize
  connect
  check_and_initialize
end

def show_tables
  @db.execute("SELECT name FROM SQLITE_MASTER where type='table'").flatten
end

def find_random_word
  @db.execute("SELECT word FROM wordlist ORDER BY random() LIMIT 1;").first.first
end

def find_word_of_length(length)
  row = @db.execute("SELECT word FROM wordlist WHERE length = #{length} ORDER BY random() LIMIT 1;")
  row.first ? row.first.first : nil
end

def drop_table
  @db.execute "DROP TABLE IF EXISTS wordlist;"
end

def setup_database
  connect
  drop_table
  create_schema
  load_words
end
