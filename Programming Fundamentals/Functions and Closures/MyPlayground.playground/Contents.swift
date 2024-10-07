//Excercise 1: Practice Using Functions
//var goldBars = 0
////Since the function body consists of a single line of code as the function’s return statement, you can return an implicit expression to make your code more succinct.
//
//func unlockTreasureChest(inventory: Int) -> Int {
//  inventory + 100
//}
//goldBars = unlockTreasureChest(inventory: goldBars)
//print(goldBars)
//goldBars = unlockTreasureChest(inventory: goldBars)
//print(goldBars)
//goldBars = unlockTreasureChest(inventory: goldBars)
//print(goldBars)

//Excercise 2: Practice writing succintly expressive functions
//var goldBars = 0
//func incrementInventory(inventory: Int) -> Int {
//  return inventory + 100
//}
////second parameter
//func incrementInventory(inventory: Int, amount: Int) -> Int {
//  return inventory + 100
//}
//replaced 100 with amount
//func incrementInventory(inventory: Int, amount: Int) -> Int {
//  return inventory + amount
//}

//provide default value
//func incrementInventory(inventory: Int, amount: Int = 100) -> Int {
//  return inventory + amount
//}
//add argument label, Using an argument label can help you express your code to read more like an English sentence.
//func incrementInventory(inventory: Int, by amount: Int = 100) -> Int {
//  return inventory + amount
//}
////omit invenotry argumnet label, Now at the function call-site, your function may read something like “increment gold bars by 200.” That reads more expressively and succinctly.
//func incrementInventory(_ inventory: Int, by amount: Int = 100) -> Int {
//  return inventory + amount
//}

//If you want to modify a function parameter value in Swift, you’ll need to use an in-out parameter. In the function signature, convert inventory into an in-out parameter.
//func incrementInventory(_ inventory: inout Int, by amount: Int = 100) -> Int {
//  return inventory + amount
//}
//You can now modify the inventory parameter value within the function body. You no longer need to call a function and set the function result to a variable as you did in a previous exercise.
//Remove the function’s return type because you no longer need to return a value. Note: You cannot set a default value for an in-out parameter.

var goldBars = 0
func incrementInventory(_ inventory: inout Int, by amount: Int = 100) {
  inventory += amount
}

incrementInventory(&goldBars)
print(goldBars)
incrementInventory(&goldBars)
print(goldBars)
incrementInventory(&goldBars)
print(goldBars)
incrementInventory(&goldBars, by: 300)
print(goldBars)
incrementInventory(&goldBars, by: 50)
print(goldBars)
