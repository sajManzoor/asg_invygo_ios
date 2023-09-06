//
//  XCUIElement+Shortcut.h
//  TestInvygoApplicationUITests
//
//  Created by Sajid on 5/9/23.
//


#import <XCTest/XCUIElement.h>

@interface XCUIElement (Shortcut)

/**
 * Wait for DEFAULT_WAIT_TIME and check if element exists
 *
 * @return A boolean that indicates whether the element exists after waiting for DEFAULT_WAIT_TIME
 */
- (BOOL)existsWithWait;

/**
 * Wait the element appears and tap with timeout of 3 seconds
 *
 * @return A boolean that indicates whether the element appears after waiting.
 */
- (BOOL)waitAndTap;

/**
 * Tap on a textField and type text
 *
 */
- (void)tapAndTypeText:(NSString *)text;

/**
 * Wait and Tap only if an element exists.
 *
 */
- (void)waitAndTapIfExists;

/**
 * Wait for element to disappear.
 *
 */
- (BOOL)waitForDisappearence;

/**
 * Clear Text - used for text fields.
 *
 */
- (void)clearText;


/**
 * Wait for element matching predicate to appear.
 *
 */
- (BOOL)waitForElementPredicate:(NSPredicate *)predicate withTimeOut:(int)timeout;


- (BOOL)waitAndTapWithTimeout:(int)timeout;

@end
