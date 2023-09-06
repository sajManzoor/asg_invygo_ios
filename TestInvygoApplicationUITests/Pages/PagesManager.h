//
//  PagesManager.h
//  TestInvygoApplicationUITests
//
//  Created by Sajid on 5/9/23.
//

#import <Foundation/Foundation.h>


@class HomePage;
@class NavBar;
@class FindCar;
@class CarDetailPage;

@interface PagesManager : NSObject

@property HomePage *homePage;

@property NavBar *navBar;

@property FindCar *findCar;

@property CarDetailPage *carDetailsPage;

+ (instancetype)sharedInstance;

@end

