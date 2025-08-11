import UIKit

class Version: Comparable,CustomStringConvertible,Equatable
{
    let major:Int
    let minor :Int
    
    init(major: Int, minor: Int) {
        self.major = major
        self.minor = minor
    }
    
    var description:String{
        return "\(major).\(minor)"
        
    }
    
    static func ==(lhs:Version ,rhs:Version)->Bool{
        return lhs.major == rhs.major && lhs.minor == rhs.minor
    }
    
    static func <(lhs:Version ,rhs:Version)->Bool{
        if lhs.major == rhs.major{
            return lhs.minor < rhs.minor
        }
        return lhs.major < rhs.major
        
        
    }
}

let versions = [
                 Version(major:5,minor:5),
                 Version(major:1,minor:2),
                 Version(major:5,minor:5)
]
let sortedVersions = versions.sorted(by: <)
print(versions)
print(sortedVersions)

protocol Developer{
    func writeCode()
    func completeProject()
    func provideTestCases()
}

class JavaDeveloper:Developer{
    func writeCode(){
        print("I can write code in java")
    }
    
    func completeProject() {
        print("I can complete the project in java")
    }
    
    func provideTestCases() {
        print("i can provide test cases in java")
    }
    
}


class SwiftDeveloper : Developer{
    func writeCode() {
        print("I can write code in swift")
    }
    
    func completeProject() {
        print("I can complete Swift project")
    }
    
    func provideTestCases() {
        print("I can provide test cases in Swift")
    }
}


class Manager{
    
    var developerDelegate: Developer?
    
    func teamMange(){
        
    }
    
    func goForVacay(){
        
    }
}

var manager = Manager()

var javaDeveloper = JavaDeveloper()
var swiftDeveloper = SwiftDeveloper()

manager.developerDelegate = javaDeveloper
manager.developerDelegate?.writeCode()

manager.developerDelegate = swiftDeveloper
manager.developerDelegate?.writeCode()



protocol Payment{
    func makePayment()
}
class CoffeeMachine {
    var delegatePayment : Payment?
    func brewCoffee(){
        print("Here is your order")
    }
}

class ProcessPayment : Payment{
    func makePayment() {
        print("Please Pay the amount")
    }
    
    
}





