//
//  FindCar.m
//  TestInvygoApplicationUITests
//
//  Created by Sajid on 5/9/23.
//

#import "FindCar.h"
#import "Constants.h"

@implementation FindCar

- (instancetype)init {
    self = [super init];
    if (self) {
        
        self.inputSearch = [self.appView.otherElements elementMatchingPredicate:LABEL_EQUALS(SEARCH_BOX_TEXT)];
        
        self.mandatoryComponents = [NSMutableArray arrayWithObjects:self.inputSearch, nil];
    }
    
    return self;
}

-(XCUIElement *) gitFirstCarCard:(NSString *)label {
    XCUIElement *scrollView = [self.appView.scrollViews elementBoundByIndex:0];
    XCUIElementQuery *carCards = [[scrollView otherElements] matchingPredicate:LABEL_BEGINS(label)];
    if(carCards.count == 0) {
        return NULL;
    }
    return [carCards elementBoundByIndex:carCards.count-1];
}

@end
