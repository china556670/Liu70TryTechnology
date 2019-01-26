//
//  TestListRequest.m
//  Liu70TryTechnology
//
//  Created by 奇林刘 on 2019/1/26.
//  Copyright © 2019 Liu70. All rights reserved.
//

#import "TestListRequest.h"

@implementation TestListRequest

+ (NSString *)urlComponent {
    return @"/getJoke";
}

+ (void)goRequestWithType:(nullable NSString *)type page:(nullable NSNumber *)page Success:(Success)success Failure:(Failure)fail {
    NSMutableDictionary *parameters = [NSMutableDictionary dictionary];
    if (type) parameters[@"type"] = type;
    if (page) parameters[@"page"] = page;
    [self GETWithParameters:parameters success:success failure:fail];
}

@end
