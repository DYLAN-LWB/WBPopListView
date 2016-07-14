# WBPopListView
类似于美团的下拉菜单,用法比其它的简单太多

// 详情请看demo

self.popView = [[WBPopListView alloc] initWithFrame:CGRectMake(0, 55, self.view.frame.size.width, MENU_HEIGHT) menuCount:5 colorType:1 viewController:self];

self.popView.delegate = self;

[self.view addSubview:self.popView];


// 代理方法

- (void)didSelectedItemWithValueArray:(NSMutableArray *)valueAM {

    NSLog(@"valueAM = %@", valueAM);

}

- (void)getDataWithType:(NSInteger)type {

    self.popView.dataSource = self.menuAM[type];

}

