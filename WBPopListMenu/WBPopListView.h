//
//  WBPopListView.h
//  WBPopListMenu
//
//  Created by 李伟宾 on 16/7/11.
//  Copyright © 2016年 李伟宾. All rights reserved.
//

/**
 *  适用于每个分类都有自己单独的一个接口
 */

#import <UIKit/UIKit.h>

#define SCREEN_WIDTH    self.view.frame.size.width
#define SCREEN_HEIGHT   self.view.frame.size.height
#define MENU_HEIGHT     45  //菜单栏高度
#define CELL_HEIGHT     45  //cell高度




@class WBPopListView;
@protocol WBPopListViewDelegate <NSObject>
@optional
/**
 *  获取某个菜单的数据
 */
- (void)getDataWithType:(NSInteger)type;

/**
 *  点击某个cell时把id数组传给控制器
 */
- (void)didSelectedItemWithValueArray:(NSMutableArray *)valueAM;


@end


@interface WBPopListView : UIView

/**
 *  初始化方法, 可以根据需求修改
 *
 *  @param frame          frame
 *  @param menuCount      菜单分类个数
 *  @param colorType      配色方案
 *  @param viewController 浮控制器
 *
 *  @return 自定义下拉菜单
 */
- (instancetype)initWithFrame:(CGRect)frame menuCount:(NSInteger)menuCount colorType:(NSInteger)colorType viewController:(UIViewController *)viewController;

/**
 *  代理
 */
@property (nonatomic, assign) id <WBPopListViewDelegate> delegate;

/**
 *  数据源
 */
@property (nonatomic, strong) NSArray *dataSource;


@end
