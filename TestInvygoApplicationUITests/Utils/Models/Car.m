//
//  CAR.m
//

#import "CAR.h"

@implementation CAR

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        // Initialize properties with values from the dictionary
        self.brand = dictionary[@"brand"];
        self.firstVehicle = dictionary[@"firstVehicle"];
        self.model = dictionary[@"model"];
        self.numberOfVehicles = dictionary[@"numberOfVehicles"];
        self.priceRange = dictionary[@"priceRange"];
        self.whatsIncludedList = @[];
    }
    return self;
}

@end
