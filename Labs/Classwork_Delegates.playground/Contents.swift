import UIKit

protocol DoChores{
    
}

protocol Parent{
    
}

struct Child :DoChores{
     func doChore(){
         print("Cleaning is done")
    }
}

var child = Child()

var parent = Parent(delegate: child)
