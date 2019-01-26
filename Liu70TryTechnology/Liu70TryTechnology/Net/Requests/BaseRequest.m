//
//  BaseRequest.m
//  Liu70TryTechnology
//
//  Created by 奇林刘 on 2019/1/26.
//  Copyright © 2019 Liu70. All rights reserved.
//

#import "BaseRequest.h"

@implementation BaseRequest

#pragma mark - 主要方法
+ (void)POSTWithParameters:(NSDictionary *)parameters success:(Success)success failure:(Failure)failure {
    AFHTTPSessionManager *manager = [self manager];
    NSString *requestUrl = [API stringByAppendingString:[self urlComponent]];
    NSDictionary *requestParameters = [self finalParametersWithParameters:parameters];
    
    [manager POST:requestUrl parameters:requestParameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [self handleResponseWithSuccess:success failure:failure responseObject:responseObject task:task];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    }];
}

+ (void)GETWithParameters:(NSDictionary *)parameters success:(Success)success failure:(Failure)failure {
    AFHTTPSessionManager *manager = [self manager];
    NSDictionary *requestParameters = [self finalParametersWithParameters:parameters];
    NSString *requestUrl = [API stringByAppendingString:[self urlComponent]];
    
    [manager GET:requestUrl parameters:requestParameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        [self handleResponseWithSuccess:success failure:failure responseObject:responseObject task:task];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    }];
}

#pragma mark - 相关方法
+ (void)handleResponseWithSuccess:(Success)success failure:(Failure)failure responseObject:(id _Nullable)responseObject task:(NSURLSessionDataTask * _Nonnull)task {
    NSNumber *responseCode = responseObject[@"code"];
    NSString *responseMessage = responseObject[@"msg"];
    switch ([responseCode intValue]) {
        case 200:
            success(task, responseObject[@"result"]);
            break;
        default:
            failure(task, responseObject);
            break;
    }
}

+ (AFHTTPSessionManager *)manager {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript",@"text/html", nil];
    return manager;
}

+ (NSDictionary *)finalParametersWithParameters:(NSDictionary *)parameters {
    NSMutableDictionary *requestParameters = [NSMutableDictionary dictionaryWithDictionary:parameters];
    //在这边添加公共参数
    return requestParameters;
}

+ (NSString *)urlComponent {
    NSString *urlComponent = @"";
    //子类实现拼接url
    return urlComponent;
}

@end
