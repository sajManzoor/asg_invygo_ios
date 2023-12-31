//
//  Page.m
//  TestInvygoApplicationUITests
//
//  Created by Sajid on 5/9/23.
//

#import "Page.h"

@implementation Page

- (instancetype)init {
    self = [super init];
    self.mandatoryComponents = [NSMutableArray new];
    return self;
}

- (XCUIApplication *)appView {
    return [[XCUIApplication alloc] initWithBundleIdentifier:@"com.invygo.customer"];
}

- (bool)checkIfMandatoryComponentsExist {
    if (!self.mandatoryComponents || self.mandatoryComponents.count == 0){
        NSLog(@"No mandatory components");
        return false;
    }
    for (XCUIElement *element in self.mandatoryComponents) {
        if (!element.existsWithWait) {
            NSLog(@"Missing %@", element);
            return false;
        }
    }
    return true;
}


- (bool)checkIfMandatoryComponentsExistWithTimeout:(int)timeOut {
    if (!self.mandatoryComponents || self.mandatoryComponents.count == 0){
        NSLog(@"No mandatory components");
        return false;
    }
    for (XCUIElement *element in self.mandatoryComponents) {
        if (![element waitForExistenceWithTimeout:timeOut]) {
            NSLog(@"Missing %@", element);
            return false;
        }
    }
    return true;
}


@end
