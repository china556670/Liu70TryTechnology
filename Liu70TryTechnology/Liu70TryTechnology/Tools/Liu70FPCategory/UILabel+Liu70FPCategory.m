//
//  UILabel+Liu70FPCategory.m
//
//  Created by Liu70 on 2018/1/12.
//  Copyright © 2018年 Liu70 All rights reserved.
//

#import "UILabel+Liu70FPCategory.h"

@implementation UILabel (Liu70FPCategory)

- (UILabel * (^)(UIFont *))fp_font {
    UILabel * (^block)(UIFont *) = ^(UIFont *font) {
        self.font = font;
        return self;
    };
    return block;
}

- (UILabel * (^)(UIColor *))fp_textColor {
    UILabel * (^block)(UIColor *) = ^(UIColor *color) {
        self.textColor = color;
        return self;
    };
    return block;
}

- (UILabel * (^)(NSString *))fp_text {
    UILabel * (^block)(NSString *) = ^(NSString *text) {
        self.text = text;
        return self;
    };
    return block;
}

- (UILabel * (^)(NSMutableAttributedString *))fp_attributedText {
    UILabel * (^block)(NSMutableAttributedString *) = ^(NSMutableAttributedString *attributedText) {
        self.attributedText = attributedText;
        return self;
    };
    return block;
}

- (UILabel * (^)(NSInteger))fp_numberOfLines {
    UILabel * (^block)(NSInteger) = ^(NSInteger lines) {
        self.numberOfLines = lines;
        return self;
    };
    return block;
}

- (UILabel * (^)(NSTextAlignment))fp_textAlignment {
    UILabel * (^block)(NSTextAlignment) = ^(NSTextAlignment alignment) {
        self.textAlignment = alignment;
        return self;
    };
    return block;
}

@end
