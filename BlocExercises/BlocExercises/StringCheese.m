//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    /* WORK HERE */
    /* accepts a new favorite cheese and replaces the favorite cheese */
    NSString *favoriteCheese = cheeseName;
    NSString *favoriteCheeseText = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    NSLog(@"favoriteCheese is %@, CUSTOM STRING: %@", favoriteCheese, favoriteCheeseText);
    return favoriteCheeseText;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSString *choppedStatement;
    
    if ([[cheeseName lowercaseString] hasSuffix:@" cheese"]) {
        /* WORK HERE, ASSUMING `cheeseName` ENDS WITH " cheese" */
        /* remove suffix " cheese" */
        NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
        choppedStatement = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
    } else {
        /* WORK HERE, ASSUMING `cheeseName` DOES NOT END WITH " cheese" */
        choppedStatement = cheeseName;
        NSLog(@"NO CHEESE DETECTED, choppedStatement = %@", choppedStatement);
    }

    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */

    return choppedStatement;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    NSString *numberCheeses;
    if (cheeseCount == 1) {
        /* WORK HERE, ASSUMING THERE IS 1 CHEESE */
        numberCheeses = [NSString stringWithFormat:@"%ld cheese", (long)cheeseCount];
    } else {
        /* WORK HERE, ASSUMING THERE ARE 2+ CHEESES */
        numberCheeses = [NSString stringWithFormat:@"%ld cheeses", (long)cheeseCount];
    }
    
    /*
     (You will learn more about if/else statements in a later checkpoint.)
     */
    
    return numberCheeses;
}

@end
