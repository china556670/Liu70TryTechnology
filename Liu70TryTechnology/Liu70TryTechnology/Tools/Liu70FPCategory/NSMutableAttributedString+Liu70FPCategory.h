//
//  NSMutableString+Liu70FPCategory.h
//
//  Created by Liu70 on 2018/1/12.
//  Copyright © 2018年 Liu70 All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSMutableAttributedString (Liu70FPCategory)

- (NSMutableAttributedString * (^)(NSString *, UIFont *, UIColor *))fp_appendAttributedString;

@end
