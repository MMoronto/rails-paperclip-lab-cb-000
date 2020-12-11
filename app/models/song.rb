class Song < ActiveRecord::Base
  belongs_to :artist

  has_attached_file :album_art, default_url: ':'
  validates_attachment_content_type :album_art, content_type: /\Aimage\/.*\Z/

  def artist_name
    self.try(:artist).try(:name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end
end
