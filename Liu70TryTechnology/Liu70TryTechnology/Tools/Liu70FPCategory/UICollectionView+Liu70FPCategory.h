//
//  UICollectionView+Liu70FPCategory.h
//
//  Created by Liu70 on 2018/1/18.
//  Copyright © 2018年 Liu70 All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionView (Liu70FPCategory)

- (UICollectionView * (^)(id))fp_delegate;

- (UICollectionView * (^)(id))fp_dataSource;

- (UICollectionView * (^)(Class, NSString *))fp_registerClassForCellWithReuseIdentifier;

@end
