//
//  CheatsDetailCell.h
//  MysteryPalaceRaiders
//
//  Created by leiziyun on 16/4/28.
//  Copyright © 2016年 leiziyun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CheatsDetailCell : UITableViewCell
@property (nonatomic,strong) IBOutlet UILabel * uiLabel;
@property (nonatomic,strong) IBOutlet UIImageView * uiImageView;

+(float)getHeightForTitle:(NSString*)title;
@end
