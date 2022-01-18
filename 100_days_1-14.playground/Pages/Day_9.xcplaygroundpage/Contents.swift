//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


//var clouser = ()
//func khaliFunc(a:()) -> (){
//    return clouser
//}
//khaliFunc(a: clouser)
//var c = khaliFunc
//5000

class main{
    
}
class download{
    //download
    //save gallery
    //play song
    var status = true

    func downloadSong(downlodingComplete:(String) -> ()){
        if status{
            print("complete")
            //play
            downlodingComplete("happy face")
            
        }else{
            print("inprocess")
            status = true
        }
    }
}
class save{
    
}
class playsong{
    let obj = download()

    func loadView(){
        obj.downloadSong { greeting in
            print(greeting)
            let n = "new happy face"
            print(n)
        }
    }
}
let obj1 = download()

let obj = playsong()

obj.loadView()

//obj.status


class baseVM{
    var reloadData = ()
    var loaderUpdate = ()
}

protocol playFootball{
    func mustElevenPlayer()
   // optional func cheesaCouch()
}
class playGame:playFootball{
    func mustElevenPlayer() {
        print("")
    }
    
    
}
