//
//  UICollectionView+Liu70FPCategory.m
//
//  Created by Liu70 on 2018/1/18.
//  Copyright © 2018年 Liu70 All rights reserved.
//

#import "UICollectionView+Liu70FPCategory.h"

@implementation UICollectionView (Liu70FPCategory)

- (UICollectionView * (^)(id))fp_delegate {
    UICollectionView * (^block)(id) = ^(id object) {
        self.delegate = object;
        return self;
    };
    return block;
}

- (UICollectionView * (^)(id))fp_dataSource {
    UICollectionView * (^block)(id) = ^(id object) {
        self.dataSource = object;
        return self;
    };
    return block;
}

- (UICollectionView * (^)(Class, NSString *))fp_registerClassForCellWithReuseIdentifier {
    UICollectionView * (^block)(Class, NSString *) = ^(Class class, NSString *reuseID) {
        [self registerClass:class forCellWithReuseIdentifier:reuseID];
        return self;
    };
    return block;
}

@end
