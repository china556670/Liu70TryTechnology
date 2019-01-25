//
//  NSMutableString+Liu70FPCategory.m
//
//  Created by Liu70 on 2018/1/12.
//  Copyright © 2018年 Liu70 All rights reserved.
//

#import "NSMutableAttributedString+Liu70FPCategory.h"

@implementation NSMutableAttributedString (Liu70FPCategory)

- (NSMutableAttributedString * (^)(NSString *, UIFont *, UIColor *))fp_appendAttributedString {
    NSMutableAttributedString * (^block)(NSString *, UIFont *, UIColor *) = ^(NSString *string, UIFont *font, UIColor *color) {
        NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
        if (font) {
            attributes[NSFontAttributeName] = font;
        }
        if (color) {
            attributes[NSForegroundColorAttributeName] = color;
        }
        NSMutableAttributedString *nextAttributedString = [[NSMutableAttributedString alloc] initWithString:string attributes:attributes];
        [self appendAttributedString:nextAttributedString];
        return self;
    };
    return block;
}

@end
