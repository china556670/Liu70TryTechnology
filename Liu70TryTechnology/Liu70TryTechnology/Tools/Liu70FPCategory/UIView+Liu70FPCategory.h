//
//  UIView+Liu70FPCategory.h
//
//  Created by Liu70 on 2018/1/12.
//  Copyright © 2018年 Liu70 All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Liu70FPCategory)

- (UIView * (^)(UIColor *))fp_backgroundColor;

- (UIView * (^)(CGFloat))fp_cornerRadius;

- (UIView * (^)(CGFloat))fp_borderWidth;

- (UIView * (^)(UIColor *))fp_borderColor;

- (UIView * (^)(BOOL))fp_clipsToBounds;

@end
