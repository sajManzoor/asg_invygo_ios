//
//  HomePage.m
//  TestInvygoApplicationUITests
//
//  Created by Sajid on 5/9/23.
//

#import "HomePage.h"

@implementation HomePage

- (instancetype)init {
    self = [super init];
    if (self) {
        
        self.buttonCountryAndCitySelector = [self.appView.buttons elementMatchingPredicate:IDENTIFIER_EQUALS(@"CountryAndCitySelector")];
        
        self.mandatoryComponents = [NSMutableArray arrayWithObjects:self.buttonCountryAndCitySelector, nil];
    }
    
    return self;
}

@end
