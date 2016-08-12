// Memory Game: Programing exercise 1

import UIKit


var range = 0...100

for idx in range{
    if idx % 5 == 0{
        print("\(idx) Bingo!!!")
    }else if idx % 2 == 0{
        print("\(idx) par!!!")
    }else if idx % 2 == 1{
        print("\(idx) impar!!!")
    }else if idx >= 30 && idx <= 40{
        print("\(idx) Viva Swift!!!")
    }
}
