class AddAttachmentAlbumArtToSongs < ActiveRecord::Migration[5.1]
  def self.up
    change_table :songs do |t|
      t.attachment :album_art
    end
  end

  def self.down
    remove_attachment :songs, :album_art
  end
end
