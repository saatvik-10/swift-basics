import UIKit

//guards are used when we want a control of our program flow
var birthdayIsToday: Bool = true
var cakeCandlesList: Bool = true
var invitedGuests: [String] = ["Alice", "Bob", "Charlie"]

@MainActor
func singHappyBirthday() {
    if birthdayIsToday {
        if !invitedGuests.isEmpty {
            print()
        }
    }
}

@MainActor
func againSingHappyBirthday() {
    guard birthdayIsToday else {
        return
    }
    
    guard !invitedGuests.isEmpty else{
        print("Guests are not coming soon!")
        return
    }
    
    guard !cakeCandlesList else {
        print("Candles are there!")
        return
    }
}


var title: String? = nil
var price: Double? = nil
var pages: Int? = nil

func processBook(title: String?, price: Double?, pages: Int?) {
    if let theTitle = title, let thePrice = price, let thePages = pages {
        print("Book Title: \(theTitle)")
        print("Book Price: \(thePrice)")
        print("Book Pages: \(thePages)")
    }
}

func prcessBook2(title: String?, price: Double?, pages: Int?) {
    guard let theTitle = title, let thePrice = price, let thePages = pages else {
        return
    }
    
    print("Book Title: \(theTitle)")
    print("Book Price: \(thePrice)")
    print("Book Pages: \(thePages)")
}

