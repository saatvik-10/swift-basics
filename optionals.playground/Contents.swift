import UIKit


struct Student {
    var name: String
    var enrollementYear: Int? //question mark is just like using '?' in interface in typescript. CALLED AS OPTIONAL INTEGER
}

var firstStudent = Student(name: "Saatvik", enrollementYear: nil)
var secondStudent = Student(name: "Yash", enrollementYear: nil)

var statusCode: Int? = nil

//if firstStudent.enrollementYear != nil {
//    let year = firstStudent.enrollementYear! //forced wrapping
//    print("Enrolled in \(year)")
//}


if let unwrappedYear = firstStudent.enrollementYear {
    print("Enrolled in \(unwrappedYear)")
} else {
    print("Not enrolled yet")
}


let string = "123"
let possibleNumber = Int(string) //converting to optional integer

print(possibleNumber)

//instead of doing the above, we have to do optional binding
if let number = possibleNumber {
    print(number)
} else {
    print("Cant print number")
}


func fullName(firstName: String, middleName: String?, lastName: String) {
    if let middleName = middleName {
        print("\(firstName) \(middleName) \(lastName)")
    } else {
        print("\(firstName) \(lastName)")
    }
}

fullName(firstName: "Saatvik", middleName: nil, lastName: "Madan")


func optionalString() -> String? {
    return nil
}

@MainActor func getURL(_ string: String) -> String? {
    if let url = URL(string: string), UIApplication.shared.canOpenURL(url) { //URL() tries to convert a text to a url
        return "\(url)"
    } else {
        return nil
    }
}

let urlString = "https://www.google.com"

if let url = getURL(urlString) {
    print(url)
}


struct Toddler {
    var birthName: String
    var monthsOld: Int
    
    init?(birthName: String, monthsOld: Int) {
        if monthsOld < 12 || monthsOld > 36 {
            return nil
        } else {
            self.birthName = birthName
            self.monthsOld = monthsOld
        }
    }
}

let baby = Toddler(birthName: "abc", monthsOld: 13)

//binding is required to prevent optional part

if let baby = Toddler(birthName: "abc", monthsOld: 13) {
    print(baby)
} else {
    print("Not a toddler")
}


struct Person {
    var age: Int
    var residence: Residence?
}

struct Residence {
    var address: Address?
}

struct Address {
    var buildingName: String?
    var streetName: String?
    var apartmentNumber: String?
}

let aPer = Person(age: 21, residence: Residence(address: (Address(buildingName: "Shankar Nagari", streetName: "Paud Road", apartmentNumber: "B/7"))))

//PYRAMID OF DOOM (BAD CHOICE OF WORK)
if let theResidence = aPer.residence {
    if let theAddress = theResidence.address {
        if let appNumber = theAddress.apartmentNumber {
            print("I live in \(appNumber)")
        }
    }
}

if let apartmentNumber = aPer.residence?.address?.apartmentNumber {
    print(apartmentNumber)
} else {
    print ("ERROR 404")
}
