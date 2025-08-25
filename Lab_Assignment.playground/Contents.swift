import UIKit

class Event {
    var eventName: String
    var location: String
    var date: String
    var organizer: String
    
    init(eventName: String, location: String, date: String, organizer: String) {
        self.eventName = eventName
        self.location = location
        self.date = date
        self.organizer = organizer
    }
    
    func scheduleEvent() {}
    func rescheduleEvet() {}
    func displayInfo() {}
}

class Satsang: Event {
    var speakerName: String
    var bhajanList: [String]
    var duration: Int
    
    init(eventName:String, location:String, date:String, organizer:String, speakerName: String, bhajanList: [String], duration: Int) {
        self.speakerName = speakerName
        self.bhajanList = bhajanList
        self.duration = duration
        super.init(eventName: eventName, location: location, date: date, organizer: organizer)
    }
    
    func addBhajan(bhajanName: String) {}
    func displayBhajans(date: Date) {}
    
    override func displayInfo() {
        print("Satsang Details: \(speakerName), \(bhajanList), \(duration)")
    }
}

class Concert:Event {
    var performer: String
    var genre: String
    var ticketPrice: Double
    var availableSeats: Int
    
    init(eventName:String, location:String, date:String, organizer:String, performer: String, genre: String, ticketPrice: Double, availableSeats: Int) {
        self.performer = performer
        self.genre = genre
        self.ticketPrice = ticketPrice
        self.availableSeats = availableSeats
        super.init(eventName: eventName, location: location, date: date, organizer: organizer)
    }
    
    func bookTicket(count:Int) {}
    func isSoldOut() {}
    
    override func displayInfo() {
        
    }
}
