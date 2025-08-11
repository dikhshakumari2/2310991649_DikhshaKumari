import UIKit


class Shoe:CustomStringConvertible{
    
    let color: String
    let size: Int
    let hasLaces: Bool
    
    init(color: String, size: Int, hasLaces: Bool) {
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
        
    }
    var description: String {
        return "Shoe color is \(color), size is \(size), hasLaces is \(hasLaces)"
    }
}
let myShoe = Shoe (color: "Black", size: 12, hasLaces: true)
print (myShoe)

struct Book : Equatable {
    let title : String
    let author : String
    
    static func == (lhs:Book , rhs : Book) -> Bool{
        return lhs.title == rhs.title
    }
//    init(title: String, author: String) {
//        self.title = title
//        self.author = author
//    }
//    var description : String {
//        return "Book title is \(title), author is \(author)"
//    }
}
let book1 = Book(title: "The Alchemist", author: "Paulo Coelho")
let book2 = Book(title: "The Alchemist", author: "Paulo Coel")


print(book1)
print(book2)
if(book1 == book2 ){
    print("Same book")
}else{
    print("Different book")
}

//struct Employee : Equatable , Comparable{
//    let firstName:String
//    let lastName : String
//    let jobTitle : String
//    let phoneNumber : String
//    
//    static func == (lhs: Employee , rhs: Employee) -> Bool{
//        return lhs.firstName == rhs.firstName && lhs.lastName == rhs.lastName
//        && lhs.jobTitle == rhs.jobTitle && lhs.phoneNumber == rhs.phoneNumber
//    }
//    
//    static func < (lhs: Employee, rhs: Employee) -> Bool {
//        return lhs.lastName < rhs.lastName
//    }
//}
//
//
//let currentEmp = Employee(firstName: "Dikhsha", lastName: "K", jobTitle: "Software Developer", phoneNumber: "7528853036")
//let selectedEmp = Employee(firstName: "Dikhsha", lastName: "Kumari", jobTitle: "Software Developer", phoneNumber: "75288530396")
//
//if currentEmp == selectedEmp{
//    print("Same person")
//}else{
//    print("Different person")
//}

struct Employee: Equatable, Comparable {
    let firstName: String
    let lastName: String
    let jobTitle: String
    let phoneNumber: String
    
    
    // By default the equatable protocol, compares all of the properties of the structure
    static func == (lhs: Employee, rhs: Employee) -> Bool {
        return
            lhs.firstName == rhs.firstName &&
            lhs.lastName == rhs.lastName
    }
    
    static func < (lhs: Employee, rhs: Employee) -> Bool {
        return lhs.firstName < rhs.firstName
    }
}

let employee1 = Employee(firstName: "Rich", lastName: "Dinh",
jobTitle: "Senior Manager", phoneNumber: "415-555-7770" )

let employee2 = Employee(firstName: "Jenny", lastName: "Court",
jobTitle: "CEO", phoneNumber: "415-555-7768" )

let employee3 = Employee(firstName: "Jenica", lastName: "Chong",
jobTitle: "Front Desk", phoneNumber: "415-555-7767")

let employee4 = Employee(firstName: "Trev", lastName: "Smith",
jobTitle: "Sales Lead", phoneNumber: "415-555-7772")

let employee5 = Employee(firstName: "Rigo", lastName: "Rangel",
jobTitle: "Accountant", phoneNumber: "415-555-7771")

let employees = [employee1, employee2, employee3, employee4, employee5]

for employee in employees {
    print(employee)
}

let sortedEmployees = employees.sorted(by: <)
print("-------------")

for employee in sortedEmployees {
    print(employee)
}




