import UIKit

protocol messanger {
    func passData(_ data: String)
}

class firstView_Receiver: messanger {
    func passData(_ data: String) {
        print("Data Received: \(data)")
    }
}

class secondView_Sender {
    var delegate: messanger? //initialized for the first view
    
    func sendData(_ data: String) {
        delegate?.passData(data)
    }
}

var firstView = firstView_Receiver()
var secondView = secondView_Sender()

secondView.delegate = firstView

secondView.sendData("raphinha mi ballon d'oro")
