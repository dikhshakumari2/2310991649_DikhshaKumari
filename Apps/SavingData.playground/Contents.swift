struct Note : Codable {
    let title : String
    let text : String
    let timestamp : Date
}

let newNote = Note(title: "Grocery run" , text: "Buy milk, eggs, and bread" , timestamp: Date())


let propertyListEncoder = PropertyListEncoder()

