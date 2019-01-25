//
//  UIScrollView+mjRefreshByLiu70.h
//
//  Created by Liu70 & WZZ on 2018/4/9.
//  Copyright © 2018年 Liu70 & WZZ All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MJRefresh.h"

@protocol UIScrollViewRefreshDelegate <NSObject>

- (void)scrollView:(UIScrollView*)scrollView didBeginRefresh:(UIScrollView * (^)(NSMutableArray *))refreshData;

@end

@interface UIScrollView (mjRefreshByLiu70)

@property (nonatomic, strong) NSMutableArray* refreshDataArray;
@property (nonatomic, assign) NSInteger refreshPage;

@property (nonatomic, assign) NSInteger refreshFirstPage;
@property (nonatomic, assign) NSInteger refreshPageCount;

@property (nonatomic, weak) id<UIScrollViewRefreshDelegate> refreshDelegate;

- (void)setRefreshEnable;


- (UIScrollView * (^)(id))fp_enableRefreshAndSetRefreshDelegate;
- (UIScrollView * (^)(NSInteger))fp_refreshPageCount;


@end
