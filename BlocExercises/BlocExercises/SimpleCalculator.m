//
//  SimpleCalculator.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "SimpleCalculator.h"

@implementation SimpleCalculator

- (NSInteger) increaseNumberBy1:(NSInteger) number {
    NSInteger numPlusOne = number + 1;
    return numPlusOne;
}

- (NSInteger) addNumber:(NSInteger) number1 toNumber:(NSInteger) number2 {
    /* WORK HERE */
    NSInteger sumNumber1Number2 = number1 + number2;
    return sumNumber1Number2;
}

- (NSInteger) remainderOfNumber:(NSInteger) dividend dividedByNumber:(NSInteger) divisor {
    /* WORK HERE */
    NSInteger remainder = dividend % divisor;
    return remainder;
}

@end
