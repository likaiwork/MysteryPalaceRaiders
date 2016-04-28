//
//  Cheats.h
//  MysteryPalaceRaiders
//
//  Created by leiziyun on 16/4/28.
//  Copyright © 2016年 leiziyun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cheats : NSObject

@property (nonatomic,strong) NSString * uiTitle;
@property (nonatomic,strong) NSString * uiImageName;

+(Cheats*) getCheatsByTitle:(NSString*)title imageName:(NSString*)imageName;

@end
