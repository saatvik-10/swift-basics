import UIKit

class Student: CustomStringConvertible, Comparable {
    static func < (lhs: Student, rhs: Student) -> Bool {
        return (lhs.rno < rhs.rno)
    }
    
    static func == (lhs: Student, rhs: Student) -> Bool {
        return (lhs.rno == rhs.rno)
    }
    
    var description: String {
        return "\(fName) \(lName)"
    }
    

    let rno: Int
    let fName: String
    let lName: String
    
    init(rno: Int, fName: String, lName: String) {
        self.rno = rno
        self.fName = fName
        self.lName = lName
    }
}

var s1 = Student(rno: 1, fName: "Saatvik", lName: "Madan")
var s2 = Student(rno: 2, fName: "Pavneesh", lName: "Sharma")
var s3 = Student(rno: 2, fName: "Pavneesh", lName: "Sharma")

print(s3 == s2)

import Foundation

class IOSSDP: Codable {
    var institute: String
        var name: String
        var year: Int
    
    init(institute: String, name: String, year: Int) {
        self.institute = institute
        self.name = name
        self.year = year
    }
}

var mitSDP = IOSSDP(institute: "mit-wpu", name: "Saatvik", year: 2025)

var jsonEncoder = JSONEncoder();

if let data = try? jsonEncoder.encode(mitSDP) {
    if let jsonString = String(data: data, encoding: .ascii) {
        print(jsonString)
    }
}
