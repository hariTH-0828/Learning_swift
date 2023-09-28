class Song {
    private var _name: String
    var name: String {
        get {
            return _name
        }
        set(newName) {
            _name = newName
        }
    }
    
    private var _artist: String
    var artist: String {
        get {
            return _artist
        }
        set(newArtist) {
            _artist = newArtist
        }
    }

    private var _album: String
    var album: String {
        get {
            return _album
        }
        set(newAlbum) {
            _album = newAlbum
        }
    }
    
    private var _length: Int
    var length: Int {
        get {
            return _length
        }
        set(newLength) {
            _length = newLength
        }
    }
    
    init(_name: String, _artist: String, _album: String, _length: Int) {
        self._name = _name
        self._artist = _artist
        self._album = _album
        self._length = _length
    }
    
    public func toString() -> String {
        return """
        ------------------------------
        | Name | \(name)
        | Artist | \(artist)
        | Album | \(album)
        | Length | \(length)
        -------------------------------
        """
    }
}
