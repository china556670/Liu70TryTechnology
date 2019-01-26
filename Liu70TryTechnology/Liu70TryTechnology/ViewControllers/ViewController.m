//
//  ViewController.m
//  Liu70TryTechnology
//
//  Created by 奇林刘 on 2019/1/25.
//  Copyright © 2019 Liu70. All rights reserved.
//

#import "ViewController.h"
#define CellReuseID @"UITableViewCell"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource, UIScrollViewRefreshDelegate>

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    self.tableView = (UITableView *)[[UITableView alloc] init]
    .fp_delegate(self)
    .fp_dataSource(self)
    .fp_registerClassForCellReuseIdentifier([UITableViewCell class], CellReuseID)
    .fp_enableRefreshAndSetRefreshDelegate(self)
    .fp_refreshPageCount(20);
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.equalTo(self.view).offset(40);
        make.right.bottom.equalTo(self.view).offset(-40);
    }];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView.mj_header beginRefreshing];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellReuseID];
    TestListRequestModel *model = tableView.refreshDataArray[indexPath.row];
    cell.textLabel.text = model.text;
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return tableView.refreshDataArray.count;
}

- (void)scrollView:(UIScrollView *)scrollView didBeginRefresh:(UIScrollView *(^)(NSMutableArray *))refreshData {
    [TestListRequest goRequestWithType:@"video" page:@(scrollView.refreshPage) Success:^(NSURLSessionDataTask *task, id  _Nullable responseObject) {
        NSMutableArray *models = [TestListRequestModel mj_objectArrayWithKeyValuesArray:responseObject];
        refreshData(models);
    } Failure:^(NSURLSessionDataTask *task, id  _Nullable responseObject) {
        NSLog(@"%@", task.description);
    }];
}


@end
