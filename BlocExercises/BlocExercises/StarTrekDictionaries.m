//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* receives a character dictionary for a specific character and returns favorite beverage, e.g. */
    /* receives a key and needs to obtain, and return the value for that key */
    /**
     
     @code
     {
     "name": "Nog",
     "rank": "Lieutenant junior grade",
     "information": "the first Ferengi to enter Starfleet",
     "favorite drink": "root beer",
     "quote": "Hear all, trust nothing."
     }
     @endcode
     
     Example expected output: @"root beer"
     
     **/
    NSString *favoriteBeverage = characterDictionary[@"favorite drink"];
    return favoriteBeverage;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* receives an array of characters (see below), need to iterate through the dictionary... */
    /**
     (
     {
     "favorite drink" = "prune juice";
     information = "son of Mogh, slayer of Gowron";
     name = Worf;
     quote = "Today is a good day to die.";
     rank = lieutenant;
     },
     {
     "favorite drink" = "tea, Earl Grey, hot";
     information = "Captain of the USS Enterprise";
     name = "Jean-Luc Picard";
     rank = captain;
     }
     )
     **/
    NSLog(@"37 Received character array %@", charactersArray);
    
    NSMutableArray *myListOfDrinks = [@[] mutableCopy];
    /* iterate through dictionaries in the array */
    for(NSDictionary* dict in charactersArray){
        NSLog(@"51 iteracting each dictionary in charactersArray, dict = \n %@", dict);
        NSString *favDrink = dict[@"favorite drink"];
        NSLog(@"*****53******   found a favorite drink, favDrink = %@", favDrink);
        [myListOfDrinks addObject:favDrink];
        
    }
    NSLog(@"**57 returning array myListOfDrinks: %@", myListOfDrinks);
    NSArray *returnArray = [myListOfDrinks copy];
    return returnArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSMutableDictionary *mutableStarTrek = [characterDictionary mutableCopy];
    /* iterate and print so we know what we have */
    [mutableStarTrek enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        NSLog(@"**75** key %@ corresponds with value %@", key, obj);
    }];
    /* so we are not receiving a dictionary of characters, only a single character's dictionary */
    NSString *memorableQuoteForPicard = @"In ten years, you'll have my hair, number one";
    [mutableStarTrek setObject:memorableQuoteForPicard forKey:@"quote"];
    return mutableStarTrek;
}

@end
