//
//  IndexTableViewCell.h
//  test03
//
//  Created by 吴超凡 on 2016/12/2.
//  Copyright © 2016年 吴超凡. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IndexTableViewCell : UITableViewCell

//设置顶部图片
-(void) setHeaderImage:(NSString *) imageUrl;

/**
 *  设置cell内容
 *
 *  @param title         标题
 *  @param location      目的地
 *  @param time          时间
 *  @param collectionNum 收藏人数
 *  @param price         价格
 */
-(void)setTitle:(NSString *) title location:(NSString *)location
           time:(NSString *)time collectionNum:(NSString*)collcectionNum
          price:(NSString *)price;
@end
