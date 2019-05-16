/*:
 [<Previous](@previous)         [Home](Introduction)        [Next >](@next)

 ## A standard Result type
 
 [SE-0235](https://github.com/apple/swift-evolution/blob/master/proposals/0235-add-result.md) introduces a `Result` type into the standard library, giving us a simpler, cleaner way of handling errors in complex code such as asynchronous APIs.
 
 Swift's `Result` type is implemented as an enum that has two cases: `success` and `failure`. Both are implemented using generics so they can have an asscociated value of your choosing, but `failure` must be somehting that confirms to Swit's `Error` type.
 
 To demonstrate `Result`, we could write a function that connects to a server to figure out how many unread messages are waiting for the user. In this example code we're going to have just one possible error, whihc is that the requested URL string isn't a valid URL:
 */
enum NetworkError: Error {
    case badURL
}
/*:
 The fetching function will accept a URL string as its first parameter, and a completion handler as its second parameter. That completion hanlder will itself accept a `Result`, where the success case will store an integer, and the failure case will be some sort of `NetworkError`. We're not actually going to connect to a server here, but using a completion handler at least lets us simulate asynchronous code.
 
 Here's the code:
*/
import Foundation

func fetchUnreadCount1(from urlString: String, completionHandler: @escaping (Result<Int, NetworkError>) -> Void) {
    guard let url = URL(string: urlString) else {
        completionHandler(.failure(.badURL))
        return
    }
    
    // Complicated networking code here
    print("Fetching \(url.absoluteString)...")
    completionHandler(.success(5))
}
//: To use that code we need to check the value inside our `Result` to see whether our call succeeded or failed, like this:
fetchUnreadCount1(from: "https://www.hackingwithswift.com") { result in
    switch result {
    case .success(let count):
        print("\(count) unread messages.")
    case .failure(let error):
        print(error.localizedDescription)
    }
}

/*:
 There are three more things you ought to know before you start using `Result` in you own code.
 
 First, `Result` has a `get()` mehtod that either returns the successful value if it exists, or throws its error otherwise. This allows you to convert `Result` into a regular throwing call, like this:
*/
fetchUnreadCount1(from: "https://www.hackingwithswift.com") { result in
    if let count = try? result.get() {
        print("\(count) unread messages")
    }
}
 
//: [Next](@next)
