//
//  BaseCase.m
//  TestInvygoApplicationUITests
//
//  Created by Sajid on 5/9/23.
//

#import "BaseCase.h"
#import "PagesManager.h"
#import "NavBar.h"

@implementation BaseCase

- (void) setUp {
    [super setUp];
    self.continueAfterFailure = NO;
    
    XCUIApplication *app = [[XCUIApplication alloc] initWithBundleIdentifier:@"com.invygo.customer"];
    [app launch];
    
    //check that all mandatory components for the navbar exist to make sure the user is logged in.
    XCTAssertTrue([PagesManager.sharedInstance.navBar checkIfMandatoryComponentsExist]);
}


- (void)tearDown {
    [super tearDown];
}

@end
