//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer

- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    /* WORK HERE */
    self.arrayRememberMe = arrayToRemember;
    NSLog(@"received array %@ and comparing to property array %@", arrayToRemember, self.arrayRememberMe);
    
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    /* WORK HERE */
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    /* WORK HERE */
}

/* - (NSMutableArray *) arrayYouShouldRemember {  */
- (NSArray *) arrayYouShouldRemember {
    /* WORK HERE */
    NSLog(@"NOW TRYING TO RETRIEVE PROPERTY array: %@", self.arrayRememberMe);
    /* return [self.arrayRememberMe mutableCopy]; */
    return self.arrayRememberMe;
}

- (NSMutableArray *) arrayYouShouldCopy {
    /* WORK HERE */
    return [@[] mutableCopy];
}

- (CGFloat) floatYouShouldRemember {
    /* WORK HERE */
    return 0.0f;
}

@end