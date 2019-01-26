//
//  BaseRequest.h
//  Liu70TryTechnology
//
//  Created by 奇林刘 on 2019/1/26.
//  Copyright © 2019 Liu70. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^Success)(NSURLSessionDataTask *task, id _Nullable responseObject);
typedef void (^Failure)(NSURLSessionDataTask *task, id _Nullable responseObject);

NS_ASSUME_NONNULL_BEGIN

@interface BaseRequest : NSObject

+ (void)POSTWithParameters:(NSDictionary *)parameters success:(Success)success failure:(Failure)failure;

+ (void)GETWithParameters:(NSDictionary *)parameters success:(Success)success failure:(Failure)failure;

+ (NSString *)urlComponent;

@end

NS_ASSUME_NONNULL_END
