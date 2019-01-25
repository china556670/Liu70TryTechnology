//
//  UIView+Liu70FPCategory.m
//
//  Created by Liu70 on 2018/1/12.
//  Copyright © 2018年 Liu70 All rights reserved.
//

#import "UIView+Liu70FPCategory.h"

@implementation UIView (Liu70FPCategory)

- (UIView * (^)(UIColor *))fp_backgroundColor {
    UIView * (^block)(UIColor *) = ^(UIColor *color) {
        self.backgroundColor = color;
        return self;
    };
    return block;
}

- (UIView * (^)(CGFloat))fp_cornerRadius {
    UIView * (^block)(CGFloat) = ^(CGFloat cornerRadius) {
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
    return block;
}

- (UIView * (^)(CGFloat))fp_borderWidth {
    UIView * (^block)(CGFloat) = ^(CGFloat borderWidth) {
        self.layer.borderWidth = borderWidth;
        return self;
    };
    return block;
}

- (UIView * (^)(UIColor *))fp_borderColor {
    UIView * (^block)(UIColor *) = ^(UIColor *borderColor) {
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
    return block;
}

- (UIView * (^)(BOOL))fp_clipsToBounds {
    UIView * (^block)(BOOL) = ^(BOOL clipsToBounds) {
        self.clipsToBounds = clipsToBounds;
        return self;
    };
    return block;
}

@end
