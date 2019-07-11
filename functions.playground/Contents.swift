import UIKit

//intention: create a function that will be used to keep track of walking dogs (amount of time)
//data types:
//func walkdog (){
//    print ("1. acquire dog")
//    print ("2. get a leash")
//    print ("3. put the leash on your dog")
//    print ("4. grab poop bags")
//    print ("5. go outside to begin walk!")
//}
//walkdog ()
//
//func dogwalking(numberOfDogs : Int) {
//    print ("There is/are \(numberOfDogs) dogs at this house.")
//}
//dogwalking (numberOfDogs: 26)

//
//func hello(name : String) {
//    print ("Hello, \(name)!")
//}
//hello (name : "Chloe")

//intention: create a bank account function that takes in the current balance as the deposit amount and yields a new balance
////data types: doubles (money)
//func bankaccount(currentBal : Double, depositAmount : Double) -> Double {
////    let newBal = currentBal + depositAmount
//    let newBal = currentBal + depositAmount
//    return newBal
//}
//print (bankaccount(currentBal: 13.24, depositAmount: 20.0))

//intention:create a bank account function that takes in a withdrawl amount and produces a new account balance
//data types:doubles
func bankaccount(currentBal : Double, withdrawl : Double) -> Double {
 let newBal = currentBal - withdrawl
    return newBal
}
var newBal = bankaccount(currentBal: 25.5, withdrawl: 15.3)
print("Your new balance is \(newBal)")
