//
//  EqualityDeterminer.m
//  BlocExercises
//
//  Created by Aaron Brager on 6/10/14.
//
//

#import "EqualityDeterminer.h"

@implementation EqualityDeterminer

- (BOOL) string:(NSString *)string1 isTheSameAsString:(NSString *)string2 {
    /* WORK HERE */
    BOOL areCerealsEqual = string1 == string2;
    NSString *returnText = @"";
    if (areCerealsEqual){
        returnText = @"Cereals should be equal.";
    }
    else{
        returnText = @"Cereals should not be equal.";
    }
    return (returnText);
}

- (BOOL) number:(NSNumber *)number1 isTheSameAsNumber:(NSNumber *)number2 {
    /* WORK HERE */
    BOOL areNumbersEqual = number1 == number2;
    NSString *returnText = @"";
    if (areNumbersEqual){
        returnText = @"Six should be equal to six.";
    }
    else{
        returnText = @"Six should not be equal to seven.";
    }
    return (returnText);
}

- (BOOL) integer:(NSInteger)integer1 isGreaterThan:(NSInteger)integer2 {
    /* WORK HERE */
    BOOL isNumber1GreaterThanNumber2 = integer1 > integer2;
    NSString *returnText = @"";
    if (isNumber1GreaterThanNumber2){
        returnText = [NSString stringWithFormat:@"%ld is greater than %ld.", integer1, integer2];
    }
    return (returnText);
}

@end
