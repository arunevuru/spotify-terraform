resource "spotify_playlist" "Animal" {
  name   = "Animal"
  tracks = ["4ApCig0GTR4IEp7Ijsyo3r"]
}


data "spotify_search_track" "new_playlist" {
  artist = "Eminem"
}
resource "spotify_playlist" "new_playlist" {
  name   = "new_playlist"
  tracks = [
    data.spotify_search_track.new_playlist.tracks[0].id,
    data.spotify_search_track.new_playlist.tracks[1].id,
  ]
}