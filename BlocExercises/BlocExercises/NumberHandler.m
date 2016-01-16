//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* receive NSNumber  and return doubled value */
    NSInteger numberValue = [number intValue];
    NSInteger doubledValue = numberValue * 2;
    NSNumber *returnValue = [NSNumber numberWithInteger:doubledValue];
    return returnValue;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
   NSMutableArray* returnArray = [[NSMutableArray alloc] init];
    NSInteger arrayCounter = 0;
    for (NSInteger n = number; n <= otherNumber; n++){
        NSLog(@" in for loop, n = %ld with arrayCounter = %ld", (long)n, arrayCounter);
        NSNumber *currentNumber = [NSNumber numberWithInteger:n];
        [returnArray addObject:currentNumber];
        NSLog(@"return Array supposedly updated by adding: %@", returnArray[arrayCounter]);
        arrayCounter++;
    }
    NSLog(@"returnArray = %@", returnArray);
    return returnArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* accept an array of numbers and identify the lowest number */
    /* sort array numerically, then pull off the first number to return */
    NSInteger lowestValue = [ arrayOfNumbers[0] intValue];
    for(NSNumber *number in arrayOfNumbers) // Use fast enumeration to iterate through the array
    {
        NSInteger numberValue = [number intValue];
        if (numberValue < lowestValue){
            lowestValue = numberValue;
        }
    }
    return lowestValue;
}

@end
