json.set! song.id do
  json.extract! song, :id, :title, :duration, :artist_id, :album_id
  if song.song_url.attached?
    json.song_url url_for(song.song_url)
  end
end

