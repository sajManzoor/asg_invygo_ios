//
//  CarDetailPage.h
//  TestInvygoApplicationUITests
//
//  Created by Sajid on 6/9/23.
//

#import "Page.h"
#import "Constants.h"

@interface CarDetailPage : Page

@property XCUIElement *buttonBack;
@property XCUIElement *carDetailsTitle;
@property XCUIElement *carName;



-(BOOL)validateWhatsIncludedLabels:(NSArray<NSString *> *)labels;


@end
