class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    drake = Artists.find_by(name: "Drake")
    drake = Artist.new(name: "Drake")if drake = nil
    self.artist = drake
  end
end
