//
//  main.swift
//  HW2
//
//  Created by 한상현 on 2015. 6. 17..
//  Copyright (c) 2015년 한상현. All rights reserved.
//

import Foundation

protocol Playable
{
    func playMusic()
}

class Music : Playable {
    var title : String
    var artist : String
    
    
    init (){
        title = ""; artist = ""
    }
    
    init(title:String,artist:String){
        self.title = title
        self.artist = artist
    }
    
    func playMusic() {
        println("\(title)- \(artist)")
    }
}

class Album : Playable {
    var list : [Music]
    var albumName : String
    
    
    init (albumName: String) {
        list = []
        self.albumName = albumName
        
    }
    
    func playMusic() {
        println("[\(albumName)]" )
        for music in list
        {
            
            music.playMusic()
        }
        println()
        
    }
  
    func addMusic(music : Music)
    {
        list.append(music)
    }
    
    
    func delMusic(delTitle: String){
        
    }
    
    func findMusic(title: String...){
        
        for findtitle in title {
            for music in list
            {
                if music.title==findtitle {
                    println("[\(albumName)]에서 \(findtitle) 검색결과 \(music.title)- \(music.artist)")
                }
            }
        }
    }
    
}

var music1 = Music(title: "제목1",artist: "가수1")
var music2 = Music(title: "제목2",artist: "가수2")
var music3 = Music(title: "제목3",artist :"가수3")

var album1 = Album(albumName: "첫번쨰 앨범")
var album2 = Album(albumName: "두번쨰 앨범")

album1.addMusic(music1)
album1.addMusic(music2)
album2.addMusic(music3)

album1.playMusic()
album2.playMusic()

album1.findMusic("제목1","제목2")

