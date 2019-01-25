//
//  NSDateFormatter+Liu70FPCategory.m
//
//  Created by Liu70 on 2018/2/11.
//  Copyright © 2018年 Liu70 All rights reserved.
//

#import "NSDateFormatter+Liu70FPCategory.h"

@implementation NSDateFormatter (Liu70FPCategory)

- (NSDateFormatter * (^)(NSString *))fp_dateFormat {
    NSDateFormatter * (^block)(NSString *) = ^(NSString *format) {
        self.dateFormat = format;
        return self;
    };
    return block;
}

@end
