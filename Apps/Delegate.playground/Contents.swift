import UIKit

var greeting = "Hello, playground"

protocol DelegateDataPassing{
    func passData(data: String?)
}

class FirstViewController : DelegateDataPassing{
    
    
    var dataInFirstVC : String?
    func passData(data: String?){
        dataInFirstVC = data
    }
}

class SecondViewController{
    var delegate: DelegateDataPassing?
    var datainSecondVC : String?
    func passDataToFirstVC(data: String?){
        delegate?.passData(data: datainSecondVC)
        
    }
}
var firstVC = FirstViewController()
var secondVC = SecondViewController()
secondVC.delegate = FirstViewController()
secondVC.datainSecondVC = "Hello from Second VC"
secondVC.passDataToFirstVC(data: secondVC.datainSecondVC)
print(firstVC.dataInFirstVC ?? "No data passed")
