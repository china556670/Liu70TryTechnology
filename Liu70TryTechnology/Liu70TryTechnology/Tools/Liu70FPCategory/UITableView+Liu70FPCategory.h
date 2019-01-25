//
//  UITableView+Liu70FPCategory.h
//
//  Created by Liu70 on 2018/1/16.
//  Copyright © 2018年 Liu70 All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (Liu70FPCategory)

- (UITableView * (^)(id))fp_delegate;

- (UITableView * (^)(id))fp_dataSource;

- (UITableView * (^)(UITableViewCellSeparatorStyle))fp_separatorStyle;

- (UITableView * (^)(Class, NSString *))fp_registerClassForCellReuseIdentifier;

@end
