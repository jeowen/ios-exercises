//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    /* split string by ";" */
    
    
    NSLog(@"received character string: %@", characterString);
    NSArray *starTrekArray = [characterString componentsSeparatedByString:@";"];
    
    return starTrekArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    /* take an array and return a semi-colon-delimited string */

    NSString *joinedComponents = [characterArray componentsJoinedByString:@";"];
     NSLog(@"STAR TREK ARRAYS joinedComponents:%@", joinedComponents);
    return joinedComponents;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* receive array, sort it ascending alphabetically a to zed and return sorted array */
    NSMutableArray *mutableArray = [characterArray mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    [mutableArray sortUsingDescriptors:@[sortDescriptor]];
    /*  convert mutable array back into standard array */
    NSArray *immutableArray = [mutableArray copy];
    return immutableArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* Receive an array and determine whether worf is in the array  */
    /* NSInteger numArrayElements = [characterArray count]; */
    BOOL worfPresent = NO;
    for (int i=0; i<[characterArray count]; i++) {
        NSString *currentCharacter = characterArray[i];
        
        NSLog(@"SORTINGARRAYSORTINGARRAY %d: %@", i, characterArray[i]);
        if ( [currentCharacter rangeOfString:@"Worf"].location != NSNotFound ) {
            // do something if the string is found
            worfPresent = YES;
        }
    }

    return worfPresent;
}

@end
