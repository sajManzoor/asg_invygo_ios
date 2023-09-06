//
//  APIClient.h
//  TestInvygoApplicationUITests
//
//  Created by Sajid on 6/9/23.
//

#import <Foundation/Foundation.h>

@interface APIClient : NSObject

- (NSDictionary * _Nullable)getFirstVehicleDetails;

- (NSDictionary * _Nullable)getCarFeatureDetails:(NSString *)car_id;

@end
