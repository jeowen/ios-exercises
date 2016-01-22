import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    // WORK HERE
    let returnCheese = "My favorite cheese is " + cheese + "."
    return returnCheese
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."
print(fullSentence)

/*

Arrays & Dictionaries

*/

var numberArray = [1, 2, 3, 4]

let firstItem = numberArray[0]

// Add 5 to this array
// WORK HERE
numberArray.append(5)
print("array is \(numberArray).")


var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
// WORK HERE
numberDictionary[5]="five"
var i = 0
for (digitInt, digitString) in numberDictionary{
    print (" i is \(i).")
    print ("key is \(digitInt), value is \(digitString).")
    i++
}
/*------==----> CHECKPOINT Completed! --------------------->  */
/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
// WORK HERE
for i in 1 ... 10{
    print ("i = \(i)")
}
/*------==----> CHECKPOINT Completed! --------------------->  */


// Use a half-closed range loop to print 1 - 10, inclusively
// WORK HERE
for j in 1..<10{
    print ("j is \(j)")
}
/*------==----> CHECKPOINT Completed! --------------------->  */


let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:[[String : String]]) -> [String] {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    // WORK HERE
   var drinksArray = [String] ()
    for person in characters{
        if let favoriteDrink = person["favorite drink"]{
            print("found a new drink:")
            print(favoriteDrink)
            drinksArray.append(favoriteDrink)
        }
    }
    /* ----------------------*/

    
    /* ----------------------*/
    return (drinksArray)
}

var favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks
/*------==----> CHECKPOINT Completed! --------------------->  */
/*

Optionals

*/

func emailFromUserDict(userDict : [String : String]) -> String {
    // Return the user's email address from userDict, or return "" if they don't have one
    
    // WORK HERE
    
    var returnEmail = ""
    
    for (characteristic, description) in userDict{
        if (characteristic == "email"){
            returnEmail = description
        }
    }
    return(returnEmail)
}


let mostafaElSayedUser = ["name" : "Mostafa A. El-Sayed", "occupation" : "Chemical Physicist", "email" : "mael-sayed@gatech.edu", "awards" : "Langmuir Award in Chemical Physics, Arabian Nobel Prize, Ahmed Zewail prize, The Class of 1943 Distinguished Professor, 2007 US National Medal of Science", "birthday" : "8 May 1933"]

let marjorieBrowneUser = ["name" : "Marjorie Lee Browne", "occupation" : "Mathematician", "birthday" : "September 9, 1914"]


// If your emailFromUserDict function is implemented correctly, both of these should output "true":

emailFromUserDict(mostafaElSayedUser) == "mael-sayed@gatech.edu"
emailFromUserDict(marjorieBrowneUser) == ""

/*------==----> CHECKPOINT Completed! --------------------->  */

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in

func formatFoodString(foodToFormat : [String]) -> String {
    print ("received \(foodToFormat)")
    let numFoods = foodToFormat.count
    var i = ""
    var counter = 1
    /* let greeting = "Hello, " + personName + "!" */
    for food in foodToFormat{
        i += food
        if counter == numFoods{}
        else{
           i += ";"
            counter++
        }
    }
    return i
}

let expectedOutputTest = formatFoodString(strings)
let expectedOutput = "milk;eggs;bread;challah"
/*------==----> CHECKPOINT Completed! --------------------->  */
/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

func cerealSort(cereal1: String, cereal2: String) -> Bool{
    return cereal1 < cereal2
}
let cerealArraySorted = cerealArray.sort(cerealSort)

print (cerealArraySorted)

// Use a closure to sort this array alphabetically
// WORK HERE
