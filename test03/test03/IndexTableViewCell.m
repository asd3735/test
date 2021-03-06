//
//  IndexTableViewCell.m
//  test03
//
//  Created by 吴超凡 on 2016/12/2.
//  Copyright © 2016年 吴超凡. All rights reserved.
//

#import "IndexTableViewCell.h"
#import "UIImageView+WebCache.h"
#import "CommonUtil.h"
#import "Consts.h"
#import "JQPaddingLabel.h"


@interface IndexTableViewCell ()

@property (weak, nonatomic) IBOutlet UIImageView *postImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet JQPaddingLabel *timeLabel;
@property (weak, nonatomic) IBOutlet UIButton *collectionBtn;
@property (weak, nonatomic) IBOutlet JQPaddingLabel *priceLabel;
@end

@implementation IndexTableViewCell

- (void)awakeFromNib {
    
    [self.collectionBtn.imageView setContentMode:UIViewContentModeScaleAspectFit];
    // 添加边框，圆角
    [CommonUtil addViewAttr:self.timeLabel borderWidth:1 borderColor:RGB(200, 200, 200) cornerRadius:5];
    [CommonUtil addViewAttr:self.collectionBtn borderWidth:1 borderColor:RGB(200, 200, 200) cornerRadius:5];
    [CommonUtil addViewAttr:self.priceLabel borderWidth:1 borderColor:RGB(200, 200, 200) cornerRadius:5];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

/**
 *  设置顶部图片
 *
 *  @param imageUrl 图片url
 */
- (void)setHeaderImage:(NSString *)imageUrl {
    [self.postImageView sd_setImageWithURL:[NSURL URLWithString:imageUrl] placeholderImage:nil];
}


/**
 *  设置cell内容
 *
 *  @param title         标题
 *  @param location      目的地
 *  @param time          时间
 *  @param collectionNum 收藏人数
 *  @param price         价格
 */
- (void)setTitle:(NSString *)title location:(NSString *)location
            time:(NSString *)time collectionNum:(NSString *)collectionNum
           price:(NSString *)price {
    
    // 标题
    self.titleLabel.text=[CommonUtil isEmpty:title]?@"暂无":title;
    
    // 目的地
    location = [CommonUtil isEmpty:location] ? @"暂无" : location;
    self.locationLabel.text = [NSString stringWithFormat:@"目的地：%@", location];
    
    // 日期
    self.timeLabel.edgeInsets = UIEdgeInsetsMake(0, 5, 0, 5);
    self.timeLabel.text = [CommonUtil isEmpty:time] ? @" -- " : [NSString stringWithFormat:@"%@", time];
    
    // 收藏
    NSString *desc = [NSString stringWithFormat:@"%d人收藏  ", [collectionNum intValue]];
    [self.collectionBtn setTitle:desc forState:UIControlStateNormal];
    
    // 价格
    self.priceLabel.edgeInsets = UIEdgeInsetsMake(0, 5, 0, 5);
    price = [CommonUtil isEmpty:price] ? @" -- " : price;
    price = [NSString stringWithFormat:@"￥%@", price];
    self.priceLabel.text = price;
}


@end
