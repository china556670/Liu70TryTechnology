//
//  UIImageView+Liu70FPCategory.m
//  v_video
//
//  Created by Liu70 on 2018/8/13.
//  Copyright © 2018年 Liu70 All rights reserved.
//

#import "UIImageView+Liu70FPCategory.h"

@implementation UIImageView (Liu70FPCategory)

- (UIImageView * (^)(UIViewContentMode))fp_contentMode {
    UIImageView * (^block)(UIViewContentMode) = ^(UIViewContentMode contentMode) {
        self.contentMode = contentMode;
        return self;
    };
    return block;
}

@end
