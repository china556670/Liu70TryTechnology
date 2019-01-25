//
//  UIButton+Liu70FPCategory.h
//  v_video
//
//  Created by Liu70 on 2018/8/24.
//  Copyright © 2018年 Liu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Liu70FPCategory)

- (UIButton * (^)(id, SEL, UIControlEvents))fp_addTargetActionForControlEvents;

- (UIButton * (^)(UIImage *, UIControlState))fp_setImageForState;

@end
