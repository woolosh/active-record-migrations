# db/migrate/01_create_artists.rb

ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/artists.sqlite"
)

class CreateArtists < ActiveRecord::Migration[5.2]
    def up
    end

    def down
    end
end

class CreateArtists < ActiveRecord::Migration[5.2]
    def change
      create_table :artists do |t|
        t.string :name
        t.string :genre
        t.integer :age
        t.string :hometown
      end
    end
  end

sql = <<-SQL
    CREATE TABLE IF NOT EXISTS artists (
    id INTEGER PRIMARY KEY,
    name TEXT,
    genre TEXT,
    age INTEGER,
    hometown TEXT
    )
SQL

ActiveRecord::Base.connection.execute(sql)
