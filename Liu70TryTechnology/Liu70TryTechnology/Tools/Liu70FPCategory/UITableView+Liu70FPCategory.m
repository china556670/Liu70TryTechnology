//
//  UITableView+Liu70FPCategory.m
//
//  Created by Liu70 on 2018/1/16.
//  Copyright © 2018年 Liu70 All rights reserved.
//

#import "UITableView+Liu70FPCategory.h"

@implementation UITableView (Liu70FPCategory)

- (UITableView * (^)(id))fp_delegate {
    UITableView * (^block)(id) = ^(id object) {
        self.delegate = object;
        return self;
    };
    return block;
}

- (UITableView * (^)(id))fp_dataSource {
    UITableView * (^block)(id) = ^(id object) {
        self.dataSource = object;
        return self;
    };
    return block;
}

- (UITableView * (^)(UITableViewCellSeparatorStyle))fp_separatorStyle {
    UITableView * (^block)(UITableViewCellSeparatorStyle) = ^(UITableViewCellSeparatorStyle style) {
        self.separatorStyle = style;
        return self;
    };
    return block;
}

- (UITableView * (^)(Class, NSString *))fp_registerClassForCellReuseIdentifier {
    UITableView * (^block)(Class, NSString *) = ^(Class class, NSString *reuseID) {
        [self registerClass:class forCellReuseIdentifier:reuseID];
        return self;
    };
    return block;
}


@end
