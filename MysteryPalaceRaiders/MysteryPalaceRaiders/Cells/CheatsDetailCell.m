//
//  CheatsDetailCell.m
//  MysteryPalaceRaiders
//
//  Created by leiziyun on 16/4/28.
//  Copyright © 2016年 leiziyun. All rights reserved.
//

#import "CheatsDetailCell.h"

@implementation CheatsDetailCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

+(float)getHeightForTitle:(NSString*)title
{
    CGRect cgrect = [title boundingRectWithSize:CGSizeMake(UI_SCREEN_WIDTH, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17]} context:nil];
    return cgrect.size.height;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
