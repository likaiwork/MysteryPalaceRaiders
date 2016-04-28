//
//  CheatsDetailViewController.m
//  MysteryPalaceRaiders
//
//  Created by leiziyun on 16/4/28.
//  Copyright © 2016年 leiziyun. All rights reserved.
//

#import "CheatsDetailViewController.h"
#import "Cheats.h"
#import "CheatsDetailCell.h"

@interface CheatsDetailViewController ()
@property (nonatomic,strong) NSArray * nsArray;
@property (nonatomic,strong) IBOutlet UITableView * uiTableView;
@end

@implementation CheatsDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = [NSString stringWithFormat:@"逃出神秘宫殿第%li关攻略",(long)self.level+1];
    [self createData];
}

-(void)createData
{
    if(self.level==0){
        
        _nsArray = [[NSArray alloc] initWithObjects:[Cheats getCheatsByTitle:@"第一关作为游戏中新手教程，其难度再简单不过了，首先按照系统要求的我们先点击角落中的箱子。" imageName:@"level_1_1.jpg"], [Cheats getCheatsByTitle:@"然后在车厢中得到需要的两个工具" imageName:@"level_1_2.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_1_3.jpg"],[Cheats getCheatsByTitle:@"将获得的两个工具组合成一个道具，然后回到箱子这里将锁给撬开" imageName:@"level_1_4.jpg"],[Cheats getCheatsByTitle:@"在撬开的箱子中得到一个红钻，然后这里头还有一个密码箱，需要我们获得密码才能够打开。" imageName:@"level_1_5.jpg"],[Cheats getCheatsByTitle:@"接着引导来到火车厢这里，获得密码：519" imageName:@"level_1_6.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_1_7.jpg"],[Cheats getCheatsByTitle:@"回到密码盒子那边输入密码即可打开盒子获得里头的钥匙" imageName:@"level_1_8.jpg"],[Cheats getCheatsByTitle:@"使用钥匙将火车的车厢门打开，即可通关这一关了。" imageName:@"level_1_9 .jpg"],nil];
    }else if(self.level==1){
        
        _nsArray = [[NSArray alloc] initWithObjects:[Cheats getCheatsByTitle:@"第一关作为游戏中新手教程，其难度再简单不过了，首先按照系统要求的我们先点击角落中的箱子。" imageName:@"level_1_1.jpg"], [Cheats getCheatsByTitle:@"然后在车厢中得到需要的两个工具" imageName:@"level_1_2.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_1_3.jpg"],[Cheats getCheatsByTitle:@"将获得的两个工具组合成一个道具，然后回到箱子这里将锁给撬开" imageName:@"level_1_4.jpg"],[Cheats getCheatsByTitle:@"在撬开的箱子中得到一个红钻，然后这里头还有一个密码箱，需要我们获得密码才能够打开。" imageName:@"level_1_5.jpg"],[Cheats getCheatsByTitle:@"接着引导来到火车厢这里，获得密码：519" imageName:@"level_1_6.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_1_7.jpg"],[Cheats getCheatsByTitle:@"回到密码盒子那边输入密码即可打开盒子获得里头的钥匙" imageName:@"level_1_8.jpg"],[Cheats getCheatsByTitle:@"使用钥匙将火车的车厢门打开，即可通关这一关了。" imageName:@"level_1_9 .jpg"],nil];
    }else if(self.level==2){
        
        _nsArray = [[NSArray alloc] initWithObjects:[Cheats getCheatsByTitle:@"第一关作为游戏中新手教程，其难度再简单不过了，首先按照系统要求的我们先点击角落中的箱子。" imageName:@"level_1_1.jpg"], [Cheats getCheatsByTitle:@"然后在车厢中得到需要的两个工具" imageName:@"level_1_2.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_1_3.jpg"],[Cheats getCheatsByTitle:@"将获得的两个工具组合成一个道具，然后回到箱子这里将锁给撬开" imageName:@"level_1_4.jpg"],[Cheats getCheatsByTitle:@"在撬开的箱子中得到一个红钻，然后这里头还有一个密码箱，需要我们获得密码才能够打开。" imageName:@"level_1_5.jpg"],[Cheats getCheatsByTitle:@"接着引导来到火车厢这里，获得密码：519" imageName:@"level_1_6.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_1_7.jpg"],[Cheats getCheatsByTitle:@"回到密码盒子那边输入密码即可打开盒子获得里头的钥匙" imageName:@"level_1_8.jpg"],[Cheats getCheatsByTitle:@"使用钥匙将火车的车厢门打开，即可通关这一关了。" imageName:@"level_1_9 .jpg"],nil];
    }else if(self.level==3){
        
        _nsArray = [[NSArray alloc] initWithObjects:[Cheats getCheatsByTitle:@"第一关作为游戏中新手教程，其难度再简单不过了，首先按照系统要求的我们先点击角落中的箱子。" imageName:@"level_1_1.jpg"], [Cheats getCheatsByTitle:@"然后在车厢中得到需要的两个工具" imageName:@"level_1_2.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_1_3.jpg"],[Cheats getCheatsByTitle:@"将获得的两个工具组合成一个道具，然后回到箱子这里将锁给撬开" imageName:@"level_1_4.jpg"],[Cheats getCheatsByTitle:@"在撬开的箱子中得到一个红钻，然后这里头还有一个密码箱，需要我们获得密码才能够打开。" imageName:@"level_1_5.jpg"],[Cheats getCheatsByTitle:@"接着引导来到火车厢这里，获得密码：519" imageName:@"level_1_6.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_1_7.jpg"],[Cheats getCheatsByTitle:@"回到密码盒子那边输入密码即可打开盒子获得里头的钥匙" imageName:@"level_1_8.jpg"],[Cheats getCheatsByTitle:@"使用钥匙将火车的车厢门打开，即可通关这一关了。" imageName:@"level_1_9 .jpg"],nil];
    }else if(self.level==4){
        
        _nsArray = [[NSArray alloc] initWithObjects:[Cheats getCheatsByTitle:@"第一关作为游戏中新手教程，其难度再简单不过了，首先按照系统要求的我们先点击角落中的箱子。" imageName:@"level_1_1.jpg"], [Cheats getCheatsByTitle:@"然后在车厢中得到需要的两个工具" imageName:@"level_1_2.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_1_3.jpg"],[Cheats getCheatsByTitle:@"将获得的两个工具组合成一个道具，然后回到箱子这里将锁给撬开" imageName:@"level_1_4.jpg"],[Cheats getCheatsByTitle:@"在撬开的箱子中得到一个红钻，然后这里头还有一个密码箱，需要我们获得密码才能够打开。" imageName:@"level_1_5.jpg"],[Cheats getCheatsByTitle:@"接着引导来到火车厢这里，获得密码：519" imageName:@"level_1_6.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_1_7.jpg"],[Cheats getCheatsByTitle:@"回到密码盒子那边输入密码即可打开盒子获得里头的钥匙" imageName:@"level_1_8.jpg"],[Cheats getCheatsByTitle:@"使用钥匙将火车的车厢门打开，即可通关这一关了。" imageName:@"level_1_9 .jpg"],nil];
    }else if(self.level==5){
        
        _nsArray = [[NSArray alloc] initWithObjects:[Cheats getCheatsByTitle:@"第一关作为游戏中新手教程，其难度再简单不过了，首先按照系统要求的我们先点击角落中的箱子。" imageName:@"level_1_1.jpg"], [Cheats getCheatsByTitle:@"然后在车厢中得到需要的两个工具" imageName:@"level_1_2.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_1_3.jpg"],[Cheats getCheatsByTitle:@"将获得的两个工具组合成一个道具，然后回到箱子这里将锁给撬开" imageName:@"level_1_4.jpg"],[Cheats getCheatsByTitle:@"在撬开的箱子中得到一个红钻，然后这里头还有一个密码箱，需要我们获得密码才能够打开。" imageName:@"level_1_5.jpg"],[Cheats getCheatsByTitle:@"接着引导来到火车厢这里，获得密码：519" imageName:@"level_1_6.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_1_7.jpg"],[Cheats getCheatsByTitle:@"回到密码盒子那边输入密码即可打开盒子获得里头的钥匙" imageName:@"level_1_8.jpg"],[Cheats getCheatsByTitle:@"使用钥匙将火车的车厢门打开，即可通关这一关了。" imageName:@"level_1_9 .jpg"],nil];
    }else if(self.level==6){
        
        _nsArray = [[NSArray alloc] initWithObjects:[Cheats getCheatsByTitle:@"第一关作为游戏中新手教程，其难度再简单不过了，首先按照系统要求的我们先点击角落中的箱子。" imageName:@"level_1_1.jpg"], [Cheats getCheatsByTitle:@"然后在车厢中得到需要的两个工具" imageName:@"level_1_2.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_1_3.jpg"],[Cheats getCheatsByTitle:@"将获得的两个工具组合成一个道具，然后回到箱子这里将锁给撬开" imageName:@"level_1_4.jpg"],[Cheats getCheatsByTitle:@"在撬开的箱子中得到一个红钻，然后这里头还有一个密码箱，需要我们获得密码才能够打开。" imageName:@"level_1_5.jpg"],[Cheats getCheatsByTitle:@"接着引导来到火车厢这里，获得密码：519" imageName:@"level_1_6.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_1_7.jpg"],[Cheats getCheatsByTitle:@"回到密码盒子那边输入密码即可打开盒子获得里头的钥匙" imageName:@"level_1_8.jpg"],[Cheats getCheatsByTitle:@"使用钥匙将火车的车厢门打开，即可通关这一关了。" imageName:@"level_1_9 .jpg"],nil];
    }else if(self.level==7){
        
        _nsArray = [[NSArray alloc] initWithObjects:[Cheats getCheatsByTitle:@"第一关作为游戏中新手教程，其难度再简单不过了，首先按照系统要求的我们先点击角落中的箱子。" imageName:@"level_1_1.jpg"], [Cheats getCheatsByTitle:@"然后在车厢中得到需要的两个工具" imageName:@"level_1_2.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_1_3.jpg"],[Cheats getCheatsByTitle:@"将获得的两个工具组合成一个道具，然后回到箱子这里将锁给撬开" imageName:@"level_1_4.jpg"],[Cheats getCheatsByTitle:@"在撬开的箱子中得到一个红钻，然后这里头还有一个密码箱，需要我们获得密码才能够打开。" imageName:@"level_1_5.jpg"],[Cheats getCheatsByTitle:@"接着引导来到火车厢这里，获得密码：519" imageName:@"level_1_6.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_1_7.jpg"],[Cheats getCheatsByTitle:@"回到密码盒子那边输入密码即可打开盒子获得里头的钥匙" imageName:@"level_1_8.jpg"],[Cheats getCheatsByTitle:@"使用钥匙将火车的车厢门打开，即可通关这一关了。" imageName:@"level_1_9 .jpg"],nil];
    }
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [_nsArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * MMHotelListCell = @"CheatsDetailCell";
    CheatsDetailCell * cell = [tableView dequeueReusableCellWithIdentifier:MMHotelListCell];
    if (cell == nil) {
        cell = [[NSBundle mainBundle] loadNibNamed:MMHotelListCell owner:self options:NULL][0];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    Cheats * cheats = [_nsArray objectAtIndex:indexPath.row];
    cell.uiLabel.text = cheats.uiTitle;
    [cell.uiImageView setImage:[UIImage imageNamed:cheats.uiImageName]];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    Cheats * cheats = [_nsArray objectAtIndex:indexPath.row];
    float height = [CheatsDetailCell getHeightForTitle:cheats.uiTitle];
    return height+ 264;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CheatsDetailViewController * cheatsDetailView = [[CheatsDetailViewController alloc] initWithNibName:@"CheatsDetailViewController" bundle:nil];
    [self.navigationController pushViewController:cheatsDetailView animated:YES];
    cheatsDetailView.hidesBottomBarWhenPushed = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
