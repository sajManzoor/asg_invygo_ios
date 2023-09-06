//
//  FindCar.h
//  TestInvygoApplicationUITests
//
//  Created by Sajid on 5/9/23.
//

#import "Page.h"

@interface FindCar : Page

@property XCUIElement *inputSearch;


-(XCUIElement *) gitFirstCarCard:(NSString *)label;

@end

