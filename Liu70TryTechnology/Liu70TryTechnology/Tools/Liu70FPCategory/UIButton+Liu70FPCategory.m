//
//  UIButton+Liu70FPCategory.m
//  v_video
//
//  Created by Liu70 on 2018/8/24.
//  Copyright © 2018年 Liu. All rights reserved.
//

#import "UIButton+Liu70FPCategory.h"

@implementation UIButton (Liu70FPCategory)

- (UIButton * (^)(id, SEL, UIControlEvents))fp_addTargetActionForControlEvents {
    UIButton * (^block)(id, SEL, UIControlEvents) = ^(id target, SEL action, UIControlEvents controlEvents) {
        [self addTarget:target action:action forControlEvents:controlEvents];
        return self;
    };
    return block;
}

- (UIButton * (^)(UIImage *, UIControlState))fp_setImageForState {
    UIButton * (^block)(UIImage *, UIControlState) = ^(UIImage *image, UIControlState state) {
        [self setImage:image forState:state];
        return self;
    };
    return block;
}

@end
