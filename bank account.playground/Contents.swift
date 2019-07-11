import UIKit

//intentions:create a bank account that will allow us to make deposits, make withdrawls and transfer funds bewtween two accounts!
//because of our intentions, we know that we're going to neede at least three functions

class BankAccount {
    //properties go below here
    var accountName : String
    var currentBal : Double
    var routingNumber : Int
    
    //add your initalizer which will contain your properties above
    init(){
        accountName = "name123"
        currentBal = 0.0
        routingNumber = 0
    }
    
    func makeDeposit(depositAmount : Double) {
        currentBal = currentBal + depositAmount
    }
    
    func makeWithdrawl (withdrawlAmount : Double){
    currentBal = currentBal - withdrawlAmount}
    
    func setaccountName(newName : String){
    accountName = newName}
    
    func setRoutingNumber(newRoutingNumber : Int){
        routingNumber = newRoutingNumber}
    
    //this function check everything allows you to make sure you set everything correctly
    func checkEverything (){
        print(accountName)
        print(currentBal)
        print(routingNumber)}
    
    
    //need to create a function where I am able to transfer money from Elora's account into Jamie's account
    //for sender and recepient I am going to create objects within a function, meaning that i am going to create a bank account everytime I access this account transfer. This is important for Aviatrix project.
    func accountTransfer (sender : BankAccount, recepient : BankAccount, transferAmount: Double, senderRoutingNumber : Int){
        
        if sender.routingNumber == senderRoutingNumber {
            sender.currentBal = sender.currentBal - transferAmount
            recepient.currentBal = recepient.currentBal + transferAmount
            print("The recepient has successfully received the transfer!")}
}
        else {
            print("I'm sorry, but the info you typed in is incorrect. Please try a different routing number!")}
    

//outside of the class, i am going to create bank accounts (objects)
var jamiesBankAccount = BankAccount()
var eloraBankAccount = BankAccount()

eloraBankAccount.setaccountName(newName: "Elora's Bank Account")
eloraBankAccount.setRoutingNumber(newRoutingNumber: 999)
eloraBankAccount.makeDeposit(depositAmount: 1000.00)

jamiesBankAccount.setaccountName(newName: "Jamie's Bank Account")
jamiesBankAccount.setRoutingNumber(newRoutingNumber: 555)
jamiesBankAccount.makeDeposit(depositAmount: 10.0)

//prints everything, calling upon the previous function
jamiesBankAccount.checkEverything()
eloraBankAccount.checkEverything()

eloraBankAccount.accountTransfer(sender: eloraBankAccount, recepient: jamiesBankAccount, transferAmount: 1.00, senderRoutingNumber: 999)





