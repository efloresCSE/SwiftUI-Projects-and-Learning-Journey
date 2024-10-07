import Cocoa

//Excercise 1
//var greeting = "Hello, playground"
////Creating Constants
//let day = "Monday"
//let dailyTemperature = 75
////string formatting
//print("Today is \(day)")
//print("The temperature on \(day) is \(dailyTemperature)")
////creating variables
//var temperature = 70
//print("The temperature on \(day) is \(temperature)")
//temperature = 80
//print("The temperature on \(day) is \(temperature)")
//let weeklyTemperature = 75
//temperature = weeklyTemperature
//print("The average temperature this week is \(temperature)")
//Solution
//let day = "Monday"
//let dailyTemperature = 75
//print("Today is \(day). Rise and shine!")
//print("The temperature on \(day) is \(dailyTemperature)°F.")
//var temperature = 70
//print("The temperature in the morning on \(day) is \(temperature)°F.")
//temperature = 80
//print("The temperature in the evening on \(day) is \(temperature)°F.")
//let weeklyTemperature = 75
//temperature = weeklyTemperature
//print("The average temperature this week is \(temperature)°F.")


//Excercise 2
//let levelScore = 10
//var gameScore = 0
//gameScore += levelScore
//print("The game's score is \(gameScore)")
//var levelBonusScore = 10.0
//levelBonusScore = 20
//print("The level's bonus score is \(levelBonusScore)")
//gameScore += Int(levelBonusScore)
//print("The game's score is \(gameScore)")
//let levelLowestScore = 50
//let levelHighestScore = 99
//let levels = 10
//let levelScoreDifference = levelHighestScore - levelLowestScore
//let levelAverageScore = levelScoreDifference / levels
//print("The game's average score is \(levelAverageScore)")
//let averageLevelScore = Double(levelScoreDifference ) / Double(levels)
//print("The game's updated average score is \(averageLevelScore)")
////Solution
//let levelScore = 10
//var gameScore = 0
//gameScore += levelScore
//print("The game's score is \(gameScore).")
//var levelBonusScore = 10.0
//levelBonusScore = 20
//print("The level's bonus score is \(levelBonusScore).")
//gameScore += Int(levelBonusScore)
//print("The game's final score is \(gameScore).")
//let levelLowestScore = 50
//let levelHighestScore = 99
//let levels = 10
//let levelScoreDifference = levelHighestScore - levelLowestScore
//let levelAverageScore = levelScoreDifference / levels
//print("The level's average score is \(levelAverageScore).")
//let averageLevelScore = Double(levelScoreDifference) / Double(levels)
//print("The correct level's average score is \(averageLevelScore).")

//Excercise 3: Working with Strings in Swift
//let day = "Monday"
//print(day)
//let hour = "6"
//let minutes = "15"
//let period = "PM"
//var time = hour + ": " + minutes + " " + period
//print(time)
//let timezone = "PST"
//time += " \(timezone)"
//print(time)
//let shortDay = day.prefix(3)
//print(shortDay)
//Solution
//let day = "Monday"
//print("Today is \(day).")
//let hour = "6"
//let minutes = "15"
//let period = "PM"
//var time = hour + ":" + minutes + " " + period
//print("It is \(time).")
//print("It is \(time) on \(day).")
//let timezone = "PST"
//time += " \(timezone)"
//print("It is \(time).")
//print("It is \(time) on \(day).")
//let shortDay = day.prefix(3)
//print("Today is \(shortDay).")
//print("It is \(time) on \(shortDay).")

//Excercise 4: Work with Conditional Statements in Swift
//let freeApp = true
//if freeApp == true {
//  print("You are using the free version of the app. Buy the full version of the app to get access to all of its features.")
//}
//let morningTemperature = 70
//let eveningTemperature = 80
//if morningTemperature < eveningTemperature {
//  print("It is colder in the morning.")
//} else {
//  print("It is colder in the evening.")
//}
//let temperatureDegree = "Fahrenheit"
//if temperatureDegree == "Fahrenheit" {
//  print("The weather app works with Fahrenheit degrees.")
//} else {
//  print("The weather app works with Celsius degrees.")
//}
//if temperatureDegree == "Celsius" || temperatureDegree == "Fahrenheit" {
//  print("The weather app is configured properly.")
//} else {
//  print("The weather app isn't configured properly.")
//}
//switch temperatureDegree {
//    case "Fahrenheit": print("The weather app is configured for the US.")
//    case "Celsius": print("The weather app is configured for Europe.")
//    default: print("The weather app has an unknown configuration.")
//}

//Excercise 5: For Loops In Swift
//let levels = 10
//let freeLevels = 4
//let bonusLevel = 3
//for level in 1...levels {
//  if level == bonusLevel {
//    print("Skip bonus level \(bonusLevel).")
//    continue
//  }
//  print("Play level \(level).")
//  if level == freeLevels {
//    print("You have played all \(freeLevels) free levels. Buy the game to play the remaining \(levels - freeLevels) levels.")
//    break
//  }
//}

//Excercise 6: Work with optionals in Swift
var password = "1234"
let passcode = Int(password)
//! Is the forced unwrapping optional for optionals, we use optionals when a value might be empty, like a password
print("The passcode of the app is \(passcode!).")
//Here we change the password to a string, which will set it to nil since it is an INT
password = "hello world"
//This is a binding constant, this constant will only be used in the block, and stores the optional unwrapped value in case it's not nil, in this case we will have an invalid passcode
if let code = Int(password) {
  print("The passcode of the app is \(code).")
} else {
  print("Invalid passcode!")
}
//set it to type int, since we don't know its value yet, though, in scnearios like this you can't rely on type infereence to specify the type for you
let accessCode: Int
//safely unwrap the converted integer value of the passwrod string as before, since this is invalid, it will defualt to 1111
if let code = Int(password) {
  accessCode = code
} else {
  accessCode = 1111
}
print("The passcode of the app is \(accessCode).")
//Two factor auth,
let firstPassword = "hello"
let secondPassword = "world"
if let firstPasscode = Int(firstPassword),
  let secondPasscode =
    Int(secondPassword)
{
  print(
    "The first passcode of the app is \(firstPasscode) and the second passcode of the app is \(secondPasscode)."
  )
} else {
  print("Invalid passcodes!")
}
//SEtting defaults
let firstAccessCode: Int
let secondAccessCode: Int
if let firstPasscode = Int(firstPassword),
  let secondPasscode =
    Int(secondPassword)
{
  firstAccessCode = firstPasscode
  secondAccessCode = secondPasscode
} else {
  firstAccessCode = 1111
  secondAccessCode = 2222
}
print(
  "The first passcode of the app is \(firstAccessCode) and the second passcode of the app is \(secondAccessCode)."
)
