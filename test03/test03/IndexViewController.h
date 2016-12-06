//
//  IndexViewController.h
//  test03
//
//  Created by 吴超凡 on 2016/11/25.
//  Copyright © 2016年 吴超凡. All rights reserved.
//

#import "BaseViewController.h"

@protocol IndexViewControllerDelegate <NSObject>

@optional
- (void)menuClick:(BOOL)isOpen;

- (void)searchClick:(BOOL)isOpen;

@end

@interface IndexViewController : BaseViewController

@property (assign, nonatomic) id<IndexViewControllerDelegate> delegate;
@end

