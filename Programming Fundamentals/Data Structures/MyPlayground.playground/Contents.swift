
//Excercise 1: Arrays in Swift
//var levelScores: [Int] = []
////check if array is empty
//if levelScores.count == 0 {
//  print("Start playing the game!")
//}
//let firstLevelScore = 10
//levelScores.append(firstLevelScore)
//print("The first level's score is \(levelScores[0]).")
//let levelBonusScore = 40
//levelScores[0] += levelBonusScore
//print("The first level's score is \(levelScores[0]).")
//let freeLevelScores = [20, 30]
//levelScores += freeLevelScores
//let freeLevels = 3
//if levelScores.count == freeLevels {
//  print(
//    "You have finished playing the free version of the game. Buy the game to play its full version."
//  )
//  levelScores = []
//  print("Game restarted!")
//}

//Excercise 2: Tuple
//let credentials = ("", -1111)
//if credentials.0 == "" || credentials.1 < 0 {
//  print("Invalid credentials!")
//} else {
//  print("The username is \(credentials.0) and the password is \(credentials.1).")
//}
//let fullCredentials = (password: "pass", passcode: 1111)
//if fullCredentials.password == "" || fullCredentials.passcode < 0 {
//  print("Invalid credentials!")
//} else {
//  print("The password is \(fullCredentials.password) and the passcode is \(fullCredentials.passcode).")
//}

//Excercise 3: Dictionaries in Swift
//var weeklyTemperatures: [String: Int] = [:]
//weeklyTemperatures = [
//  "Monday": 70, "Tuesday": 75, "Wednesday": 80, "Thursday": 85, "Friday": 90, "Saturday": 95,
//]
////optional so we need to unwrap, your program will terminate code execution if they key's value isn't present, must do
//weeklyTemperatures["Monday"]! += 20
//print("The temperature on Monday is \(weeklyTemperatures["Monday"]!)°F.")
////Use optional binding to evalute if the dictionary contains the key and value for the last day of the week, used in case key is not valid
//if let temperature = weeklyTemperatures["Sunday"] {
//  print("The temperature on Sunday is \(temperature)°F.")
//} else {
//  weeklyTemperatures["Sunday"] = 100
//  print("The temperature on Sunday is \(weeklyTemperatures["Sunday"]!)°F.")
//}
////Reset values
//if weeklyTemperatures.count == 7 {
//  print("You have access to the weather forecast of the whole week.")
//  weeklyTemperatures = [:]
//  print("Reset weekly temperatures for next week!")
//}

//Excercise 4: Using Loops with Connection types
//let levelScores = [10, 20, 30, 40, 50, 60, 70]
////The enumerated() method returns a tuple of the iteration's index and value in levelScores.
//for (level, score) in levelScores.enumerated() {
//  print("The score of level \(level + 1) is \(score).")
//}
//var gameScore = 0
//for levelScore in levelScores {
//  gameScore += levelScore
//}
//print("The game's score is \(gameScore).")
//
//let weeklyTemperatures = [
//  "Monday": 70, "Tuesday": 75, "Wednesday": 80, "Thursday": 85, "Friday": 90, "Saturday": 95,
//  "Sunday": 100,
//]
////Notice that the days of the week aren’t printed in their natural order. This is because dictionaries aren’t ordered by default like arrays. You will fix this in the next step of the exercise.
//for (day, temperature) in weeklyTemperatures {
//  print("The temperature on \(day) is \(temperature)°F.")
//}
//let days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
//let temperatures = [70, 75, 80, 85, 90, 95, 100]
//for index in 0...6 {
//  print("The temperature on \(days[index]) is \(temperatures[index])°F.")
//}
