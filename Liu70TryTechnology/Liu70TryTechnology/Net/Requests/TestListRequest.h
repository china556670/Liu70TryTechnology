//
//  TestListRequest.h
//  Liu70TryTechnology
//
//  Created by 奇林刘 on 2019/1/26.
//  Copyright © 2019 Liu70. All rights reserved.
//

#import "BaseRequest.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestListRequest : BaseRequest

+ (void)goRequestWithType:(nullable NSString *)type page:(nullable NSNumber *)page Success:(Success)success Failure:(Failure)fail;

@end

NS_ASSUME_NONNULL_END
