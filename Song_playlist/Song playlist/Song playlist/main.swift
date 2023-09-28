var songHolder: [Song] = [
    Song(_name: "Hukum", _artist: "Aniruth", _album: "Jailer", _length: 240000),
    Song(_name: "Jujubee", _artist: "Aniruth", _album: "Jailer", _length: 240000),
    Song(_name: "sleeper", _artist: "Aniruth", _album: "Album", _length: 240000),
    Song(_name: "Despacito", _artist: "Aniruth", _album: "Album", _length: 240000),
    Song(_name: "En Roja neeye", _artist: "Hesham Abdul Wahab", _album: "Kushi", _length: 240000),
    Song(_name: "Aaradhya", _artist: "Hesham Abdul Wahab", _album: "Kushi", _length: 240000),
    Song(_name: "Vaa Vaasuki", _artist: "D.Imman", _album: "Seeru", _length: 240000),
    Song(_name: "Nira", _artist: "Karthik G", _album: "Takkar", _length: 240000)
]

// creating a new playlist
let plOne = Playlist(songs: songHolder, _playlistName: "my_songs")
let plTwo = Playlist(songs: songHolder, _playlistName: "my_fav_song")

// getting song details
let plOne_song_details = plOne.getSong(index: 7)
let plTwo_song_details = plTwo.getSong(index: 3)

// printing the song_details
if let song = plOne_song_details { print(song.toString()) }
else { print("Invalid Index") }

// Remove song from playlist
print(plOne.removeSong(song_name: "Hukum"))

// print all songs in a playlist
plOne.getAllSongs()

// print size of the playlist
print("Available songs in playlist : ",plOne.size)
print("Total time in the playlist : ",plOne.totalTime())
print("Formatted Time : ",plOne.formattedTotalTime())
