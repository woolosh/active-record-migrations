ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "db/artists.sqlite"
)


class AddFavoriteFoodToArtists < ActiveRecord::Migration[5.2]
    def change
        add_column :artists, :favorite_food, :string
    end
end


ActiveRecord::Base.connection.execute(sql)