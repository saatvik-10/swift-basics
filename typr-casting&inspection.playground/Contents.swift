import UIKit

class Employee {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func work() {
        print("Employee \(name) is working")
    }
}

class Manager : Employee {
    func conductMeeting () {
        print("Manager is conducting a meeting")
    }
}

class Developer : Employee {
    func writeCode() {
        print("Developer is writing code")
    }
}


class Intern : Employee {
    func learn() {
        print("Intern is assisting interns")
    }
}


var staff: [Employee] = [
    Manager(name: "I AM MUSIC"),
    Developer(name: "I AM NOT MUSIC"),
    Intern(name: "I AM KRISH MUSIC"),
    Manager(name: "MUSIC I AM")
]

for person in staff {
//    person.work()
    
    //type inspection
    switch person {
    case is Manager:
        print("\(person.name) is manager")
        var temp = person as! Manager
        temp.conductMeeting()
    case is Developer:
        print("\(person.name) is developer")
    case is Intern:
        print("\(person.name) is intern")
    default:
        print("Undefined!")
    }
    
    //type casting
    if let manager = person as? Manager {
        manager.conductMeeting()
    } else if let developer = person as? Developer {
        developer.writeCode()
    } else if let intern = person as? Intern {
        intern.learn()
    }
}
