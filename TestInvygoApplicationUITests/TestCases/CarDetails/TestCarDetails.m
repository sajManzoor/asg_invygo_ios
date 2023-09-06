//
//  TestInvygoApplicationUITests.m
//  TestInvygoApplicationUITests
//
//  Created by Sajid on 5/9/23.
//

#import "BaseCase.h"
#import "PagesManager.h"
#import "NavBar.h"
#import "FindCar.h"
#import "APIClient.h"
#import "Car.h"
#import "CarDetailPage.h"
#import "XCUIElement+Shortcut.h"

@interface TestCarDetails : BaseCase

@property XCUIElement *firstCarCard;
@property CAR *firstCar;
@property APIClient *apiClient;

@end

@implementation TestCarDetails

- (void)setUp {
    [super setUp];
    self.apiClient = [[APIClient alloc] init];
    [PagesManager.sharedInstance.navBar.buttonFindCar waitAndTap];
    XCTAssertTrue([PagesManager.sharedInstance.findCar checkIfMandatoryComponentsExist]);
    NSDictionary *firstVehicleDetails = [self.apiClient getFirstVehicleDetails];
    self.firstCar = [[CAR alloc] initWithDictionary:firstVehicleDetails];
    self.firstCarCard = [PagesManager.sharedInstance.findCar gitFirstCarCard:[NSString stringWithFormat:@"%@ %@", self.firstCar.firstVehicle[@"brandName"], self.firstCar.firstVehicle[@"carName"]]];
    XCTAssertNotNil(self.firstCarCard);
    [self.firstCarCard waitAndTapWithTimeout:DEFAULT_WAIT_TIME];
    
}

- (void) testNavigateCarDetialsPage{
    
    XCTAssertTrue([PagesManager.sharedInstance.carDetailsPage checkIfMandatoryComponentsExist]);
}

- (void)testValidateCarName{
    XCTAssertTrue([PagesManager.sharedInstance.carDetailsPage checkIfMandatoryComponentsExist]);
    NSString *carName = [NSString stringWithFormat:@"%@ %@", self.firstCar.firstVehicle[@"brandName"], self.firstCar.firstVehicle[@"carName"]];
    XCTAssertTrue([[PagesManager.sharedInstance.carDetailsPage.carName label] containsString:carName]);
}

- (void)testGoBackToFindCarPage{
    XCTAssertTrue([PagesManager.sharedInstance.carDetailsPage checkIfMandatoryComponentsExist]);
    XCTAssertTrue([PagesManager.sharedInstance.carDetailsPage.buttonBack waitAndTap]);
    XCTAssertTrue([PagesManager.sharedInstance.findCar checkIfMandatoryComponentsExist]);
    
}

- (void)testValidateWhatsIncludedLabels{
    //TODO: this case will fail as the response returned by the api is different than that what is displayed in UI.
    //There might be some UI logic behind that.
    NSDictionary *car_data = [self.apiClient getCarFeatureDetails:self.firstCar.firstVehicle[@"_id"]];
    self.firstCar.whatsIncludedList = car_data[@"whatsIncluded"];
    XCTAssertTrue([PagesManager.sharedInstance.carDetailsPage validateWhatsIncludedLabels: self.firstCar.whatsIncludedList]);
}


- (void)tearDown {
    [super tearDown];
    
}

@end
