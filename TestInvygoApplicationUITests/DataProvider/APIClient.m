//
//  APIClient.m
//  TestInvygoApplicationUITests
//
//  Created by Sajid on 6/9/23.
//

#import "APIClient.h"
#import "Constants.h"

@implementation APIClient

- (NSDictionary * _Nullable)getFirstVehicleDetails {
    NSString *url_str = @"https://api.invygo.com/web/api/v2/vehicle-groups/list?carTypes=NORMAL&latitude=25.2048&limit=1000&longitude=55.2708&sortBy=PRICE_LOW_TO_HIGH&version=2";
    return [self make_get_request:url_str];
}


- (NSDictionary * _Nullable)getCarFeatureDetails:(NSString *)car_id {
    NSString *url_str = [NSString stringWithFormat:@"https://api.invygo.com/listing-v2/api/v2/vehicles/byId?id=%@",car_id];
    return [self make_get_request:url_str];
}


- (id)make_get_request:(NSString *)url_str {
    
    NSURL *url = [NSURL URLWithString:url_str];
    
    __block NSDictionary *responseDict = nil;
    dispatch_semaphore_t semaphore = dispatch_semaphore_create(0);
    
    // Create a synchronous dispatch queue
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    // Perform the network request on the queue
    dispatch_async(queue, ^{
        // Create the NSURLSession configuration
        NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
        NSString *bearerToken = TEMP_AUTHENTICATION_HEADER;
                [config setHTTPAdditionalHeaders:@{@"Authorization": bearerToken}];
        NSURLSession *session = [NSURLSession sessionWithConfiguration:config];
        
        // Create the GET request
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        // Create a data task
        NSURLSessionDataTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
            if (error) {
                NSLog(@"Error: %@", error);
            } else {
                NSError *jsonError = nil;
                id jsonObject = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
                
                if (jsonError) {
                    NSLog(@"JSON Error: %@", jsonError);
                }  else if ([jsonObject isKindOfClass:[NSDictionary class]]) {
                    responseDict = (NSDictionary *)jsonObject;
                }
                else if ([jsonObject isKindOfClass:[NSArray class]]) {
                    responseDict = (NSDictionary *)jsonObject[0];
                }
                else {
                    NSLog(@"Unexpected Response: %@", jsonObject);
                }
            }
            
            dispatch_semaphore_signal(semaphore);
        }];
        
        // Start the data task
        [task resume];
    });
    
    // Wait for the semaphore to signal that the task is complete
    dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER);
    
    return responseDict;
}

@end
