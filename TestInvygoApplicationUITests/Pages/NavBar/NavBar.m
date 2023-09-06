//
//  NavBar.m
//  TestInvygoApplicationUITests
//
//  Created by Sajid on 5/9/23.
//

#import "NavBar.h"
#import "Constants.h"

@implementation NavBar

- (instancetype)init {
    self = [super init];
    if (self) {
        
        self.buttonHome = [self.appView.buttons elementMatchingPredicate:LABEL_BEGINS(HOME_TAB_PREFIX)];
        self.buttonSubs = [self.appView.buttons elementMatchingPredicate:LABEL_BEGINS(MY_BOOKING_TAB_PREFIX)];
        self.buttonInvoice = [self.appView.buttons elementMatchingPredicate:LABEL_BEGINS(INVOICES_TAB_PREFIX)];
        self.buttonFindCar = [self.appView.buttons elementMatchingPredicate:LABEL_BEGINS(FIND_TAB_PREFIX)];
        self.buttonProfile = [self.appView.buttons elementMatchingPredicate:LABEL_BEGINS(MY_PROFILE_TAB_PREFIX)];
        
        
        self.mandatoryComponents = [NSMutableArray arrayWithObjects:self.buttonHome, self.buttonSubs, self.buttonInvoice, self.buttonFindCar, self.buttonProfile, nil];
    }
    
    return self;
}

@end
