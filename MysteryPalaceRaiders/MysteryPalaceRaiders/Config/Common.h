//
//  Common.h
//  MotherCapital
//
//  Created by jordan.Li on 15/9/6.
//  Copyright (c) 2015年 jordan.Li. All rights reserved.
//

#ifndef MotherCapital_Common_h
#define MotherCapital_Common_h

#define UUIDStr     ([[ASIdentifierManager sharedManager] advertisingIdentifier].UUIDString)
#define AppVersion  [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]
#define BundleId    [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"]
#define kMD5Salt    @"mmmoneyIOSDevelop20150616"
#define iOS         @"2"

//指纹锁
#define TouchID     @"TouchID"
//手势密码
#define Gesture     @"Gesture"

//分页每页显示信息数
#define PageInfos   @"10"

#define UI_NAVIGATION_BAR_HEIGHT        44
#define UI_TAB_BAR_HEIGHT               49
#define UI_STATUS_BAR_HEIGHT            20
#define UI_SCREEN_WIDTH                 ([[UIScreen mainScreen] bounds].size.width)
#define UI_SCREEN_HEIGHT                ([[UIScreen mainScreen] bounds].size.height)


#define iPhone4 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) : NO)

#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)

#define iPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750 , 1334), [[UIScreen mainScreen] currentMode].size) : NO)

#define iPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) : NO)

#define iPhone6PlusJia ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2001), [[UIScreen mainScreen] currentMode].size) : NO)

/**
 *  设定颜色值
 */
#define RGBA(r, g, b, a)    [UIColor colorWithRed:(CGFloat)((r)/255.0) green:(CGFloat)((g)/255.0) blue:(CGFloat)((b)/255.0) alpha:(CGFloat)(a)]

#define RGB(r, g, b)        RGBA(r, g, b, 1.0)

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
//设置大小
#define HELVETICANEUEMEDIUM_FONT(f) [UIFont systemFontOfSize:(f)]


#define Safe_Obj(x) (((x)==nil)?(@""):(x))

#define IOS8      ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0)

#define IOS7      ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)

#define IOS9      ([[[UIDevice currentDevice] systemVersion] floatValue] >= 9.0)


#define DLog(fmt, ...)  NSLog((@"[%s]" "%s" "[%d]" fmt), __FILE__, __FUNCTION__, __LINE__, ##__VA_ARGS__);

//地址控件
#define BUTTON_WIDTH (UI_SCREEN_WIDTH - 90) / 3
#define BUTTON_HEIGHT 36

#endif


//rac
// http://www.jianshu.com/p/ff79a5ae0353
