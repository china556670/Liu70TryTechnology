//
//  UIScrollView+Liu70FPCategory.m
//  v_video
//
//  Created by Liu70 on 2018/8/15.
//  Copyright © 2018年 Liu. All rights reserved.
//

#import "UIScrollView+Liu70FPCategory.h"

@implementation UIScrollView (Liu70FPCategory)

- (UIScrollView * (^)(BOOL))fp_pagingEnabled {
    UIScrollView * (^block)(BOOL) = ^(BOOL judge) {
        self.pagingEnabled = judge;
        return self;
    };
    return block;
}

@end
