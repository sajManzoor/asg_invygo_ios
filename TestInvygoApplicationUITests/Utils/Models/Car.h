//
//  Car.h
//  TestInvygoApplicationUITests
//
//  Created by Sajid on 6/9/23.
//

#import <Foundation/Foundation.h>

@interface CAR : NSObject

@property (nonatomic, strong) NSDictionary *brand;
@property (nonatomic, strong) NSDictionary *firstVehicle;
@property (nonatomic, strong) NSDictionary *model;
@property (nonatomic, strong) NSNumber *numberOfVehicles;
@property (nonatomic, strong) NSDictionary *priceRange;
@property (nonatomic, strong) NSArray<NSString *> *whatsIncludedList;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

