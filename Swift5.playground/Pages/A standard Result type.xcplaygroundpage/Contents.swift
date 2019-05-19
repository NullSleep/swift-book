/*:
 [<Previous](@previous)         [Home](Introduction)        [Next >](@next)

 ## A Standard Result Type
 
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
/*:
 Second, `Result` has an initializer that accepts a thorwing closure: of the closure returns a value succeessfully that gets used for the `success` case, otherwise the thown error is placed into the `failure` case.
 
 For example:
*/
let result = Result { try String(contentsOfFile: "some file paht") }
/*:
 Third, rahter than using a specific error enum that you've created, you can also use the general `Error` protocol. In fact, the Swift Evolution propsal says "it's expected that most uses of Resul will use `Swift.Error` as the `Error` type argument."
 
 So, rather than using `Result<Int, NetworkError>` you could use `Result<Int, Error>`. Although this means you lose the safety of type throws, you gain, the ability to throw a variaty of different error enums - which you prefer really depends on your coding sytle.
 
 ## Transforming Result
 
 `Result` has four other methods that may prove useful: `map()`, `flatMap()`, `mapError()`, and `flatMapError()`. Each of these give you the ability to transform either the success or error somehow, and the first two work similarly to the methods of the same name on `Optional`.
 
 The `map()` method looks inside the `Result`, and transforms the success value into a different kind of value using a closure you specify. However, if it finds failure instead, it just uses that directly and ignores your transformation.
 
 To demostrate this, we're going to write some code that generates random numbers between 0 and a maximum then calculate the factors of that number. If the user requests a random number below zero, or if the number happens to be prime -i.e., it has no factors except itself and 1 - then we'll consider those to be failures.
 
 We might start by writing code to model the two possible failure cases: the user has tried to generate a random number below 0, and the number that was generated was prime:
 */
enum FactorError: Error {
    case belowMinum
    case isPrime
}
//: Next, we'd write a function that accepts a maximum number, and returns either a random number or an error:
func generateRandomNumber(maximum: Int) -> Result<Int, FactorError> {
    if maximum < 0 {
        // Creating a range below 0 will crash, so refuse
        return .failure(.belowMinum)
    } else {
        let number = Int.random(in: 0...maximum)
        return .success(number)
    }
}
//: [Next](@next)
