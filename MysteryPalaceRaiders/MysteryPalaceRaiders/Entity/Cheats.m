//
//  Cheats.m
//  MysteryPalaceRaiders
//
//  Created by leiziyun on 16/4/28.
//  Copyright © 2016年 leiziyun. All rights reserved.
//

#import "Cheats.h"

@implementation Cheats

+(Cheats*) getCheatsByTitle:(NSString*)title imageName:(NSString*)imageName
{
    Cheats * cheats = [[Cheats alloc] init];
    cheats.uiTitle = title;
    cheats.uiImageName = imageName;
    return cheats;
}
@end
