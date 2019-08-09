import UIKit

class Firebase {
    
    func createUser(username: String, password: String, completion: (Bool, Int) -> Void) {
        
        // do something time consuming
        
        let isSuccess = true
        let userID = 123
        
        completion(isSuccess, userID)
    }
}

class MyApp {
    
    func registerButtonPressed() {
        let firebase = Firebase()
        firebase.createUser(username: "Test", password: "123456") {
            (isSuccess: Bool, userID: Int) in
            print("User creation successful: \(isSuccess), ID: \(userID)")
        }
    }
    
    
    
}

let myApp = MyApp()
myApp.registerButtonPressed()
