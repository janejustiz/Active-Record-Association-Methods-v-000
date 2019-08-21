class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
  genre.songs.count
  end

  def artist_count
    genre.artists.uniq.count
  end

  def all_artist_names
    self.artists do |artist|
      artist.name
    end
  end
end
