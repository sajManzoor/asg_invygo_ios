//
//  PagesManager.m
//  TestInvygoApplicationUITests
//
//  Created by Sajid on 5/9/23.
//

#import "PagesManager.h"
#import "HomePage/HomePage.h"
#import "NavBar/NavBar.h"
#import "FindACar/FindCar.h"
#import "CarDetail/CarDetailPage.h"

@implementation PagesManager

+ (instancetype)sharedInstance {
    static PagesManager *sharedInstance = nil;
    @synchronized(self) {
        if (sharedInstance == nil) {
            sharedInstance = [[self alloc] init];
        }
    }
    return sharedInstance;
}


- (instancetype)init {
    self = [super init];
    self.homePage = [HomePage new];
    self.navBar = [NavBar new];
    self.findCar = [FindCar new];
    self.carDetailsPage = [CarDetailPage new];
    return self;
}


@end
