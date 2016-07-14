//
//  ViewController.m
//  WBPopListMenu
//
//  Created by 李伟宾 on 16/6/24.
//  Copyright © 2016年 李伟宾. All rights reserved.
//

#import "ViewController.h"
#import "WBPopListView.h"



@interface ViewController () <WBPopListViewDelegate>

@property (nonatomic, strong) WBPopListView *popView;
@property (nonatomic, strong) NSMutableArray *menuAM;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.popView = [[WBPopListView alloc] initWithFrame:CGRectMake(0, 55, self.view.frame.size.width, MENU_HEIGHT)
                                              menuCount:5
                                              colorType:1
                                         viewController:self];
    self.popView.delegate = self;
    [self.view addSubview:self.popView];
}

- (void)didSelectedItemWithValueArray:(NSMutableArray *)valueAM {
    NSLog(@"valueAM = %@", valueAM);


}

- (void)getDataWithType:(NSInteger)type {
    
    // 点击哪个按钮就把该按钮下的数组传过去
    self.popView.dataSource = self.menuAM[type];

    
    // 如果数据是一个接口返回的, 那么直接在viewDidLoad请求接口
    
    // 如果需求是点击一个菜单按钮请求一次接口, self.menuAM初始化赋值@[@[],@[],@[]];
    // 再次点击时判断下self.menuAM[type]是否有值, 有值就不要请求接口了
    // [self.menuAM replaceObjectAtIndex:type withObject:@[@"请求到的数据"]];
    
}


- (NSMutableArray *)menuAM {
    if (!_menuAM) {
        _menuAM =  [NSMutableArray arrayWithArray:@[
                                                    @[
                                                        @{@"id" : @"1", @"name":@"1111"},
                                                        @{@"id" : @"2", @"name":@"22222"},@{@"id" : @"1", @"name":@"efadf"},
                                                        @{@"id" : @"2", @"name":@"gbads"},@{@"id" : @"1", @"name":@"efadf"},
                                                        @{@"id" : @"2", @"name":@"gbads"},@{@"id" : @"1", @"name":@"efadf"},
                                                        @{@"id" : @"2", @"name":@"gbads"},@{@"id" : @"1", @"name":@"efadf"},
                                                        @{@"id" : @"2", @"name":@"gbads"},@{@"id" : @"1", @"name":@"efadf"},
                                                        @{@"id" : @"2", @"name":@"gbads"}
                                                        ],
                                                    
                                                    @[
                                                        @{@"id" : @"1", @"name":@"asdfa"},
                                                        @{@"id" : @"2", @"name":@"aa222"},
                                                        @{@"id" : @"3", @"name":@"ajdhgsfa222"}
                                                        ],
                                                    @[
                                                        @{@"id" : @"1", @"name":@"gadfae"},
                                                        @{@"id" : @"2", @"name":@"efae"},@{@"id" : @"1", @"name":@"efadf"},
                                                        @{@"id" : @"2", @"name":@"gbads"},@{@"id" : @"1", @"name":@"efadf"},
                                                        @{@"id" : @"2", @"name":@"gbads"},@{@"id" : @"1", @"name":@"efadf"},
                                                        @{@"id" : @"2", @"name":@"gbads"}
                                                        ],
                                                    @[
                                                        @{@"id" : @"1", @"name":@"efadf"},
                                                        @{@"id" : @"2", @"name":@"gbads"},
                                                        @{@"id" : @"3", @"name":@"ajdhgsfa222"},
                                                        @{@"id" : @"1", @"name":@"efadf"},
                                                        @{@"id" : @"2", @"name":@"gbads"},
                                                        @{@"id" : @"1", @"name":@"efadf"},
                                                        @{@"id" : @"2", @"name":@"gbads"},@{@"id" : @"1", @"name":@"efadf"},
                                                        @{@"id" : @"2", @"name":@"gbads"}
                                                        ],
                                                    @[
                                                        @{@"id" : @"1", @"name":@"fvvb"},
                                                        @{@"id" : @"2", @"name":@"fhgsgfh"}
                                                        ],
                                                    @[
                                                        @{@"id" : @"1", @"name":@"etyhjs"},
                                                        @{@"id" : @"2", @"name":@"sthsf"},
                                                        @{@"id" : @"3", @"name":@"ajdhgsfa222"}
                                                        ]
                                                    ]];
    }
    return _menuAM;
}

@end
