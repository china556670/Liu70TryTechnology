//
//  UILabel+Liu70FPCategory.h
//
//  Created by Liu70 on 2018/1/12.
//  Copyright © 2018年 Liu70 All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Liu70FPCategory) 

- (UILabel * (^)(UIFont *))fp_font;

- (UILabel * (^)(UIColor *))fp_textColor;

- (UILabel * (^)(NSString *))fp_text;

- (UILabel * (^)(NSMutableAttributedString *))fp_attributedText;

- (UILabel * (^)(NSInteger))fp_numberOfLines;

- (UILabel * (^)(NSTextAlignment))fp_textAlignment;

@end
