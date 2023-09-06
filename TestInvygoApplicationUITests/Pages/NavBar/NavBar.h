//
//  NavBar.h
//  TestInvygoApplicationUITests
//
//  Created by Sajid on 5/9/23.
//

#import "Page.h"

@interface NavBar : Page

/*
 * Activity Indicator - progress bar on loading the Bill history screen.
 */
@property XCUIElement *buttonHome;

/*
 * A label at the top of the BillHistoryScreen that shows the total number of people.
 */
@property XCUIElement *buttonFindCar;

/*
 * A label at the top of the BillHistoryScreen that shows the total bill amount for the entire list.
 */
@property XCUIElement *buttonSubs;

/*
 * An image in the middle of the BillHistoryScreen when there is no billing history.
 */
@property XCUIElement *buttonInvoice;

/*
 * An label in the middle of the BillHistoryScreen when there is no billing history.
 */
@property XCUIElement *buttonProfile;




@end

