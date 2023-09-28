class Playlist {
    var songs: [Song]
    var count: Int = 12
    private var _size: Int = 0
    var size: Int {
        get {
            return _size
        }
    }
    
    var _playlistName: String
    var playlistName: String {
        get {
            return _playlistName
        }
        set(newPlayListName) {
            _playlistName = newPlayListName
        }
    }
    
    // Initialization
    init(songs: [Song], _playlistName: String) {
        if songs.count <= count {
            self.songs = songs
            _size = songs.count
        }else {
            self.songs = Array(songs[0..<count])
            _size = count
        }
        self._playlistName = _playlistName
    }
    
    // Adding song to the playlist only if available space
    func add(song objSong: Song) {
        if songs.count < count {
            songs.append(objSong)
            _size += 1
        }else {
            print("Playlist is full")
        }
    }
    
    // Getting songs details
    func getSong(index i: Int) -> String {
        if i < songs.count { return songs[i].toString() }
        else { return "Invalid Index" }
    }
    
    // Remove songs from the playlist
    func removeSong(song_name name: String) -> String {
        var index = 0
        for song in songs {
            if song.name.elementsEqual(name) {
                songs.remove(at: index)
                _size -= 1
                return "****** song removed from playlist ********"
            }
            index += 1
        }
        return "null"
    }
    
    // Display all the songs in the playlist
    func getAllSongs() {
        if !songs.isEmpty {
            let _ = songs.compactMap { print($0.toString()) }
        }else { print("playlist is empty") }
    }
    
    // Calculating the total length of the playlist
    func totalTime() -> Int {
        let totalLength = songs.reduce(0, {
            (result, song) in return result + song.length
        })
        return totalLength
    }
    
    // Clearing the list of songs in the playlist
    func clear() {
        songs.removeAll()
        _size = 0
        print("clear songs from the playlist")
    }
    
    // Formatting time
    func formattedTotalTime() -> String {
        let seconds: Int = totalTime() / 1000
        let minutes: Int = (seconds % 3600) / 60
        let hours: Int = seconds % 60
        return "\(hours):\(minutes):\(seconds)"
    }
}
