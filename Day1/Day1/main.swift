import Foundation

class Music{
    var title : String
    var artist : String
    var count : Int
    
    init(){
        self.count = 0
        self.title = ""
        self.artist = ""
    }
    
    convenience init(title : String, artist : String){
        self.init()
        self.title = title
        self.artist = artist
    }
    
    func play(){
        
        println("\(title) - \(artist) (재생횟수:\(++count))")
    }
}

let music1 = Music()
music1.title = "벚꽃 엔딩"
music1.artist = "버스커 버스커"
music1.play()

let music2 = Music(title: "위 아래", artist: "EXID")
music2.play()
music2.play()
