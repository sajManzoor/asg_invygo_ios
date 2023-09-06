//
//  CarDetailPage.m
//  TestInvygoApplicationUITests
//
//  Created by Sajid on 6/9/23.
//

#import "CarDetailPage.h"

@implementation CarDetailPage

- (instancetype)init {
    self = [super init];
    if (self) {
        
        self.buttonBack = [self.appView.otherElements elementMatchingPredicate:IDENTIFIER_EQUALS(BUTTON_BACK_DETAILS_PAGE)];
        self.carDetailsTitle = [self.appView.otherElements elementMatchingPredicate:LABEL_EQUALS(CAR_DETAILS_TITLE)];
        self.carName = [[self.appView.scrollViews.firstMatch staticTexts] firstMatch];
        
        self.mandatoryComponents = [NSMutableArray arrayWithObjects:self.buttonBack, self.carDetailsTitle, nil];
    }
    
    return self;
}

-(BOOL)validateWhatsIncludedLabels:(NSArray<NSString *> *)labels {

    XCUIElement *scrollView = [self.appView.scrollViews elementBoundByIndex:0];
    __block bool isPresent = true;
    
    [labels enumerateObjectsUsingBlock:^(id item, NSUInteger index, BOOL *stop) {
        XCUIElementQuery *ele_query = [scrollView.staticTexts matchingPredicate:LABEL_EQUALS(item)];
        
        if(ele_query.count == 0) {
            isPresent = false;
            *stop = YES;
        }
    }];
    return isPresent;
}

@end
