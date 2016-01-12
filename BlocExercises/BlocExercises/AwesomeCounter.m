//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSString *returnText = @"";
    if (number < otherNumber){
        for (NSInteger n = number; n <= otherNumber; n++){
            returnText = [NSString stringWithFormat:@"%@%ld", returnText, n];
            NSLog(@"Current n = %ld, returnText = %@", n, returnText);
        }
    }
    else{
        for (NSInteger n = otherNumber; n <= number; n++){
            returnText = [NSString stringWithFormat:@"%@%ld", returnText, n];
            NSLog(@"Current n = %ld, returnText = %@", n, returnText);
        }
    }
    return returnText;
}

@end
