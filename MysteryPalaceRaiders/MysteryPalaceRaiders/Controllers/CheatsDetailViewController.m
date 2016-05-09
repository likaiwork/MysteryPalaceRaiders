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
        
        _nsArray = [[NSArray alloc] initWithObjects:[Cheats getCheatsByTitle:@"第二关就没有像第1关那么简单了，首先点击获得沙发旁的拐杖，然后在另外一个沙发的底下得到一个锤子，期间上方上面的红钻也别疏忽了哦" imageName:@"level_2_1.jpg"], [Cheats getCheatsByTitle:@"" imageName:@"level_2_2.jpg"],[Cheats getCheatsByTitle:@"然后点击左侧的窗户，在这里需要用拐杖将窗帘拉下来，拉下来的窗帘上面得到一串字符提示。" imageName:@"level_2_3.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_2_4.jpg"],[Cheats getCheatsByTitle:@"这是某个机关的密码，找到靠近天花板上的箱子，将我们得到密码输入进去" imageName:@"level_2_5.jpg"],[Cheats getCheatsByTitle:@"打开之后得到里头的一把匕首" imageName:@"level_2_6.jpg"],[Cheats getCheatsByTitle:@"将匕首和锤子组合起来，然后到桌子这里，对着其中快掉皮的桌面使用道具砸开，搞定之后得到里头的钥匙" imageName:@"level_2_7.jpg"],[Cheats getCheatsByTitle:@"使用钥匙就可以将这扇门打开了，可以通往下一关了。" imageName:@"level_2_8.jpg"],nil];
    }else if(self.level==2){
        
        _nsArray = [[NSArray alloc] initWithObjects:[Cheats getCheatsByTitle:@"第三关玩家将会被锁在某工厂的一个房间中，首先点击正面墙左下角的位置，在这里我们可以得到一把小刀以及一把呆扳手" imageName:@"level_3_1.jpg"], [Cheats getCheatsByTitle:@"" imageName:@"level_3_2.jpg"],[Cheats getCheatsByTitle:@"然后就是熔炉庞的铁锹" imageName:@"level_3_3.jpg"],[Cheats getCheatsByTitle:@"别忘记煤袋这边还有一颗红钻" imageName:@"level_3_4.jpg"],[Cheats getCheatsByTitle:@"接着点击熔炉上方的刻度表，使用刚刚得到的呆扳手将四种不同颜色上面的螺帽拧开" imageName:@"level_3_5.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_3_6.jpg"],[Cheats getCheatsByTitle:@"接着通过点击下面的颜色来让它们归位，成功之后会有“嗤”的一声，然后记住每个颜色管子所连接的刻度表指针所指位置." imageName:@"level_3_7.jpg"],[Cheats getCheatsByTitle:@"来到下方的开关闸这里，这里有四种颜色对应上图，按照给出的提示来调整开关闸的方向" imageName:@"level_3_8.jpg"],[Cheats getCheatsByTitle:@"成功的打开了熔炉之后，来到右侧煤袋这里，使用得到的小刀将其割开" imageName:@"level_3_9.jpg"],[Cheats getCheatsByTitle:@"接着用铁锹将地上的煤收起，并装到熔炉之中" imageName:@"level_3_10.jpg"],[Cheats getCheatsByTitle:@"煤放太多的使得机器故障，点击右侧的铁管，然后使用铁管将右侧缺口拉大" imageName:@"level_3_11.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_3_12.jpg"],[Cheats getCheatsByTitle:@"通过这个缺口我们就可以顺利的逃脱了。" imageName:@"level_3_13.jpg"],nil];
    }else if(self.level==3){
        
        _nsArray = [[NSArray alloc] initWithObjects:[Cheats getCheatsByTitle:@"巷子这里我们先在右侧找到所需的工具，一个燃油以及一个铁撬" imageName:@"level_4_1.jpg"], [Cheats getCheatsByTitle:@"" imageName:@"level_4_2.jpg"],[Cheats getCheatsByTitle:@"接着在下水道口可以得到一把螺丝刀，同时使用铁撬将下水道的入口打开" imageName:@"level_4_3.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_4_4.jpg"],[Cheats getCheatsByTitle:@"进入下水道中，在下面可以得到一块破布" imageName:@"level_4_5.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_4_6.jpg"],[Cheats getCheatsByTitle:@"接着来到大门这里，使用螺丝刀将木板上的螺丝都拧下来，然后点击获得一块木板" imageName:@"level_4_7.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_4_8.jpg"],[Cheats getCheatsByTitle:@"将木板、破布、燃油三个组合成一个火把，然后用大门旁边的油灯点燃火把 " imageName:@"level_4_9.jpg"],[Cheats getCheatsByTitle:@"回到下水道中，使用火把来点亮下水道的光线，在墙上就可以发现大门的钥匙了" imageName:@"level_4_10.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_4_11.jpg"],[Cheats getCheatsByTitle:@"得到钥匙自然是打开大门通关啦。" imageName:@"level_4_12.jpg"],nil];
    }else if(self.level==4){
        
        _nsArray = [[NSArray alloc] initWithObjects:[Cheats getCheatsByTitle:@"这一关是在厨房当中，首先我们需要点击中间的餐桌，在餐桌上面可以得到一块奶酪" imageName:@"level_5_1.jpg"], [Cheats getCheatsByTitle:@"" imageName:@"level_5_2.jpg"],[Cheats getCheatsByTitle:@"然后到左侧的桌子这里，得到桌上的剪刀以及挂着的一个筛子" imageName:@"level_5_3.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_5_4.jpg"],[Cheats getCheatsByTitle:@"在右侧墙上可以得到两个不同的厨房用具" imageName:@"level_5_5.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_5_6.jpg"],[Cheats getCheatsByTitle:@"来到右侧那一袋沙子这里，使用剪刀将其剪开，然后使用筛子过滤沙子，可以得到沙堆中的钥匙。" imageName:@"level_5_7.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_5_8.jpg"],[Cheats getCheatsByTitle:@"使用得到的钥匙打开下图标记的柜子，打开之后我们先不去管它" imageName:@"level_5_9.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_5_10.jpg"],[Cheats getCheatsByTitle:@"在桌子这边还有一个小抽屉，用我们得到的那个两叉的厨房用具将其打开，得到一把西瓜刀" imageName:@"level_5_11.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_5_12.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_5_13.jpg"],[Cheats getCheatsByTitle:@"用西瓜刀将餐桌上的面包切开，得到里头的一个碗" imageName:@"level_5_14.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_5_15.jpg"],[Cheats getCheatsByTitle:@"回到之前打开的橱柜，将碗放回原位，这里先将上方的碗进行一个从小到大的排列" imageName:@"level_5_16.jpg"],[Cheats getCheatsByTitle:@"碗和盘是配套的，所以下方碗摆放的顺序需要和上方碗对应，就可以打开橱柜中的暗格，得到里头的瓷盆" imageName:@"level_5_17.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_5_18.jpg"],[Cheats getCheatsByTitle:@"瓷盆将老鼠困住之后，就可以从洞中找到大门的钥匙" imageName:@"level_5_19.jpg"],[Cheats getCheatsByTitle:@"最后打开钥匙就可以通关了。" imageName:@"level_5_20.jpg"],nil];
    }else if(self.level==5){
        
        _nsArray = [[NSArray alloc] initWithObjects:[Cheats getCheatsByTitle:@"第6关这里首先我们需要点击暖炉这里，可以得到一袋烟叶、一根琴弦、一个拐杖" imageName:@"level_6_1.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_6_2.jpg"],[Cheats getCheatsByTitle:@"然后到桌子这里可以得到一个烟斗" imageName:@"level_6_3.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_6_4.jpg"],[Cheats getCheatsByTitle:@"将烟叶和烟斗组合起来，然后到暖炉这里，将用火点燃烟斗" imageName:@"level_6_5.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_6_6.jpg"],[Cheats getCheatsByTitle:@"来到场景的镜子前面来，将烟斗放到镜子前面，雾气会显示出一串字符提示，将它们的顺序记下来" imageName:@"level_6_7.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_6_8.jpg"],[Cheats getCheatsByTitle:@"再回到桌子这里，观察这些书本上方的字符，按照之前给的字符排序我们得到密码：2914" imageName:@"level_6_9.jpg"],[Cheats getCheatsByTitle:@"在下方抽屉中输入之前得到密码，打开之后就可以得到天窗的钥匙了" imageName:@"level_6_10.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_6_11.jpg"],[Cheats getCheatsByTitle:@"使用钥匙将锁住天窗的锁打开，然后将拐杖和琴弦组合成一个道具" imageName:@"level_6_12.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_6_13.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_6_14.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_6_15.jpg"],[Cheats getCheatsByTitle:@"使用组合好的道具将天窗外面挂着的钥匙取到手,最后使用钥匙打开大门通关。" imageName:@"level_6_16.jpg"],nil];
    }else if(self.level==6){
        
        _nsArray = [[NSArray alloc] initWithObjects:[Cheats getCheatsByTitle:@" 先拿到钩子和药水。" imageName:@"level_7_1.jpg"],[Cheats getCheatsByTitle:@" 将钥匙使用在马桶的蓄水池里，拿到水管。" imageName:@"level_7_2.jpg"],[Cheats getCheatsByTitle:@"用钩子敲开镜子。" imageName:@"level_7_3.jpg"],[Cheats getCheatsByTitle:@" 这边就是点击在房间里有出现过的4个符号。" imageName:@"level_7_4.jpg"],[Cheats getCheatsByTitle:@"点击完成后拿到阀门、" imageName:@"level_7_5.jpg"],[Cheats getCheatsByTitle:@" 将水管装上按上阀门，然后将水管调整好。" imageName:@"level_7_6.jpg"],[Cheats getCheatsByTitle:@"然后在浴缸里拿到钥匙。" imageName:@"level_7_7.jpg"],[Cheats getCheatsByTitle:@"用钥匙打开门即可过关！" imageName:@"level_7_8.jpg"],nil];
    }else if(self.level==7){
        
        _nsArray = [[NSArray alloc] initWithObjects:[Cheats getCheatsByTitle:@"先去大象那边。" imageName:@"level_8_1.jpg"],[Cheats getCheatsByTitle:@"拿到水桶。" imageName:@"level_8_2.jpg"],[Cheats getCheatsByTitle:@" 用水桶在喷水池里装水，装完后记得拿到宝石哦。" imageName:@"level_8_3.jpg"],[Cheats getCheatsByTitle:@"桌面上拿到食物。" imageName:@"level_8_4.jpg"],[Cheats getCheatsByTitle:@" 另一桌上拿到万能刀具和地图。" imageName:@"level_8_5.jpg"],[Cheats getCheatsByTitle:@"用万能刀具打开食物，将食物给大象吃，然后爬到大象背上。" imageName:@"level_8_6.jpg"],[Cheats getCheatsByTitle:@" 上去拿到棍子。" imageName:@"level_8_7.jpg"],[Cheats getCheatsByTitle:@"下来看到这四个国旗。" imageName:@"level_8_8.jpg"],[Cheats getCheatsByTitle:@" 根据4个国旗在地图上看到地形。" imageName:@"level_8_9.jpg"],[Cheats getCheatsByTitle:@"在黑胶唱片机下对应调整地形。" imageName:@"level_8_10.jpg"],[Cheats getCheatsByTitle:@" 完成后拿到把手。" imageName:@"level_8_11.jpg"],[Cheats getCheatsByTitle:@"将棍子和把手装入老爷车里，再倒上水。" imageName:@"level_8_12.jpg"],[Cheats getCheatsByTitle:@"点击老爷车即可过关！" imageName:@"level_8_13.jpg"],nil];
    }else if(self.level==8){
        
        _nsArray = [[NSArray alloc] initWithObjects:[Cheats getCheatsByTitle:@" 第9关这里是一个舞台，首先检查舞台上的椅子，可以得到一个从椅子拆解出来的部件，拿掉地毯在下方暗格中完成一系列的拼图之后就可以获得一颗珍珠。" imageName:@"level_9_1.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_9_2.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_9_3.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_9_4.jpg"],[Cheats getCheatsByTitle:@" 接着点击观众席，在观众席的座椅上可以得到一个望远镜和一个手套" imageName:@"level_9_5.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_9_6.jpg"],[Cheats getCheatsByTitle:@" 这里将得到椅子部件和手套进行组合成一个简易的弹弓，然后在和珍珠组合起来。" imageName:@"level_9_7.jpg"],[Cheats getCheatsByTitle:@"使用望远镜查看右侧二楼的情况" imageName:@"level_9_8.jpg"],[Cheats getCheatsByTitle:@"使用弹弓将窗台上撑着帘子的杆子掉落，获得帘子上方的线索提示" imageName:@"level_9_9.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_9_10.jpg"],[Cheats getCheatsByTitle:@" 再点击观众席这里，按照帘子上给出的线索我们找到这图中的这几张座椅，它们的数字组合起来就是：1837" imageName:@"level_9_11.jpg"],[Cheats getCheatsByTitle:@"来到舞台的小圆桌这里，按照之前得到的密码对应字母输入进去，正确的调整后就会打开这个机关盒子，得到大门的钥匙" imageName:@"level_9_12.jpg"],[Cheats getCheatsByTitle:@"最后使用钥匙通关。" imageName:@"level_9_13.jpg"],nil];
    }else if(self.level==9){
        
        _nsArray = [[NSArray alloc] initWithObjects:[Cheats getCheatsByTitle:@"到了第10关的时候游戏的难度开始上升了，这一关中首先在桌子上得到一个皮带" imageName:@"level_10_1.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_10_2.jpg"],[Cheats getCheatsByTitle:@" 然后在地板上布娃娃这里得到一根铁棍" imageName:@"level_10_3.jpg"],[Cheats getCheatsByTitle:@"在机器齿轮这边得到另外一根铁棍" imageName:@"level_10_4.jpg"],[Cheats getCheatsByTitle:@" 接着来到铁梯这里，将两根铁棍安装上去，这样就可以往上面爬了" imageName:@"level_10_5.jpg"],[Cheats getCheatsByTitle:@"在上头发现一只鸟、此外得到一根长棍以及半部分的钳子" imageName:@"level_10_6.jpg"],[Cheats getCheatsByTitle:@" 使用长棍将门上方的窗户顶开，这鸟就可以飞出去了" imageName:@"level_10_7.jpg"],[Cheats getCheatsByTitle:@"然后点击门这边，在地板上会发现另外一部分的钳子，并将其组合成一个完整的钳子" imageName:@"level_10_8.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_10_9.jpg"],[Cheats getCheatsByTitle:@"来回到之前鸟呆着的地方，使用钳子将铁丝中的铜石、小刀取出来" imageName:@"level_10_10.jpg"],[Cheats getCheatsByTitle:@"来到机器齿轮处，将皮带放进去" imageName:@"level_10_11.jpg"],[Cheats getCheatsByTitle:@"然后到机器这里，将铜石放进入口槽中，拉下拉杆，机器就会将铜石进行压缩" imageName:@"level_10_12.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_10_13.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_10_14.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_10_15.jpg"],[Cheats getCheatsByTitle:@"点击查看线索纸，注意音符所在的位置" imageName:@"level_10_16.jpg"],[Cheats getCheatsByTitle:@"回到桌子这边，将铜片放上去，然后点击进行调整" imageName:@"level_10_17.jpg"],[Cheats getCheatsByTitle:@"按照之前音符给的方式来调整，完成之后得到一把钥匙" imageName:@"level_10_18.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_10_19.jpg"],[Cheats getCheatsByTitle:@"使用钥匙打开大门，这一关也就通关了。" imageName:@"level_10_20.jpg"],nil];
    }else if(self.level==10){
        
        _nsArray = [[NSArray alloc] initWithObjects:[Cheats getCheatsByTitle:@"第11关身处于码头，在这里首先我们点击正前方，这边可以得到一个锤子" imageName:@"level_11_1.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_11_2.jpg"],[Cheats getCheatsByTitle:@"在左侧点击木箱上的绳子，然后打开箱子得到里头的刷子" imageName:@"level_11_3.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_11_4.jpg"],[Cheats getCheatsByTitle:@"点击场景左前方位置，在屋门旁可以得到一张渔网" imageName:@"level_11_5.jpg"],[Cheats getCheatsByTitle:@"接着来到船这边，点击船锚，使用锤子将其敲下" imageName:@"level_11_6.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_11_7.jpg"],[Cheats getCheatsByTitle:@"顺着船锚向下，然后使用刷子刷船头部位之后可以得到一个线索" imageName:@"level_11_8.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_11_9.jpg"],[Cheats getCheatsByTitle:@"接着将渔网和绳子组合起来，然后对着左侧的海面使用渔网，这时会捞上一些东西" imageName:@"level_11_10.jpg"],[Cheats getCheatsByTitle:@"点击刚刚捞上的那个机关盒子，按照之前在船头得到的线索来调整机关盒子" imageName:@"level_11_11.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_11_12.jpg"],[Cheats getCheatsByTitle:@"打开机关盒子之后就可以得到屋子的大门钥匙了。" imageName:@"level_11_13.jpg"],[Cheats getCheatsByTitle:@"来到屋子这边使用钥匙将其打开，然后得到里头的机器部件" imageName:@"level_11_14.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_11_15.jpg"],[Cheats getCheatsByTitle:@"将机器部件安装到下图机器缺失的位置中，然后点击进行拼图" imageName:@"level_11_16.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_11_17.jpg"],[Cheats getCheatsByTitle:@"拼图的大致样子就是下图为大家所呈现的这样" imageName:@"level_11_18.jpg"],[Cheats getCheatsByTitle:@"完成拼图之后就是下图这样，我们想要打开这个通道口就需要工具" imageName:@"level_11_19.jpg"],[Cheats getCheatsByTitle:@"再次顺着船锚来到下图中，将油灯放置到左侧阴暗部分，灯光就会照明这里，得到一根铁撬" imageName:@"level_11_20.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_11_21.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_11_22.jpg"],[Cheats getCheatsByTitle:@"使用铁撬将这个通道打开，之后通过这个我们就可以通关了。" imageName:@"level_11_23.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_11_24.jpg"],nil];
    }else if(self.level==11){
        
        _nsArray = [[NSArray alloc] initWithObjects:[Cheats getCheatsByTitle:@"这一关我们是在一艘快要沉没的船上，需要将救生艇放下来，但是想要将其放下来就需要破解两侧的机关，如何破解呢?首先我们点击盆栽这边" imageName:@"level_12_1.jpg"],[Cheats getCheatsByTitle:@"花盆这边可以得到一枚硬币、一瓶酒、甲板缝中的齿轮，同时要注意下墙上的箭头线索" imageName:@"level_12_2.jpg"],[Cheats getCheatsByTitle:@"来到望远镜这里，将硬币放进投币口中，这时就可以使用望远镜了" imageName:@"level_12_3.jpg"],[Cheats getCheatsByTitle:@"点击上面的猫眼就可以查看远处的建筑了" imageName:@"level_12_4.jpg"],[Cheats getCheatsByTitle:@"发现是一个大笨钟，上面的时间为10:00" imageName:@"level_12_5.jpg"],[Cheats getCheatsByTitle:@"接着来到救生艇这里，可以得到一根铁棍、一块布" imageName:@"level_12_6.jpg"],[Cheats getCheatsByTitle:@"使用布沾点酒，然后回到之前盆栽那边，将墙上的挂钟上面的污渍擦除" imageName:@"level_12_7.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_12_8.jpg"],[Cheats getCheatsByTitle:@"将污渍搞定后，得到时间为9:00" imageName:@"level_12_9.jpg"],[Cheats getCheatsByTitle:@"到救生艇右侧支杆这边，使用铁棍将锁撬开，此外右侧的提示线索也要记下" imageName:@"level_12_10.jpg"],[Cheats getCheatsByTitle:@"撬开锁之后，调整齿轮上的颜色，当中间颜色都是绿色之后机关就完成了" imageName:@"level_12_11.jpg"],[Cheats getCheatsByTitle:@"接着来到左侧那边点击锁，这边的锁需要解密才能够打开，之前我们已经得到了9和10的数值，还有一个线索是要将10-5=美的数值，所以正确的密码是：9、5、10" imageName:@"level_12_12.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_12_13.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_12_14.jpg"],[Cheats getCheatsByTitle:@"点击收取下图中绑着小旗的绳子，然后在绑到护栏上面" imageName:@"level_12_15.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_12_16.jpg"],[Cheats getCheatsByTitle:@"通过这根绳子我们就可以顺利的通过这关了。" imageName:@"level_12_17.jpg"],nil];
    }else if(self.level==12){
        _nsArray = [[NSArray alloc] initWithObjects:[Cheats getCheatsByTitle:@" 逃出神秘宫殿的第13关是在大笨钟里头，我们需要打开场景中左侧的机关门方能通关，不过想要打开这扇门需要三个圆形道具才能够开启。首先点击右侧那堆箱子，在这里有两个线索以及一个发条，点击收起发条" imageName:@"level_13_1.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_13_2.jpg"],[Cheats getCheatsByTitle:@"然后再点击中间会发现很多齿轮组成的机器，将之前得到的发条安装上，同时将之前得到的来自扑克上的线索来调整左侧的机关，搞定之后得到一个小型的夜视镜。" imageName:@"level_13_3.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_13_4.jpg"],[Cheats getCheatsByTitle:@"接着来到左侧大门这里，注意墙上的线索II=3，然后在门旁还有一个发条状的零件。" imageName:@"level_13_5.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_13_6.jpg"],[Cheats getCheatsByTitle:@"将刚刚得到的发条零件安装到相应的位置上去，转动后右侧的一个齿轮会旋转，获得一把钥匙" imageName:@"level_13_7.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_13_8.jpg"],[Cheats getCheatsByTitle:@"我们可以使用这把钥匙将通往上一层的门打开" imageName:@"level_13_9.jpg"],[Cheats getCheatsByTitle:@"不急着到上层去，对着大钟使用刚刚得到的夜视镜" imageName:@"level_13_10.jpg"],[Cheats getCheatsByTitle:@"先是注意白色钟的时针指向：7" imageName:@"level_13_11.jpg"],[Cheats getCheatsByTitle:@"选择左侧红色改变夜视镜的颜色，会发现多出了一个红色的时针，指向：5" imageName:@"level_13_12.jpg"],[Cheats getCheatsByTitle:@"同上，这次换成黄色的，而时针指向：1" imageName:@"level_13_13.jpg"],[Cheats getCheatsByTitle:@"现在来到二层这里，这里共有三个机关需要破解，首先点击左侧那个机关，按照之前我们得到的白红黄表中时针的指向进行调整" imageName:@"level_13_14.jpg"],[Cheats getCheatsByTitle:@"正确的调整之后，就会得到夜视镜的另外一个部件以及一个通关部件。" imageName:@"level_13_15.jpg"],[Cheats getCheatsByTitle:@"打开夜视镜，将部件安装上去，这是夜视镜中就多了一个蓝色" imageName:@"level_13_16.jpg"],[Cheats getCheatsByTitle:@"回到下层对着大笨钟使用黄色夜视镜，这时会发现六扇小窗上有着不同的图案，记住里头的图案以及它们的颜色" imageName:@"level_13_17.jpg"],[Cheats getCheatsByTitle:@"然后再使用蓝色的夜视镜，这时右下角的两扇也显示了" imageName:@"level_13_18.jpg"],[Cheats getCheatsByTitle:@"来到二层这里，选择中间那个机关，按照之前得到的线索来调整左侧的机关，搞定之后就可以得到一个“S=8”的线索以及另外一枚通关部件。" imageName:@"level_13_19.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_13_20.jpg"],[Cheats getCheatsByTitle:@"第三个机关需要输入四位数的密码，现在我们只有两位数，在之前场景那堆箱子那边，对着墙上的贴纸使用蓝色夜视镜，得到另外两个线索，分别是：“M=1”和“Q=6”" imageName:@"level_13_21.jpg"],[Cheats getCheatsByTitle:@"回到二层，选择最后一个机关，输入密码，这边密码排列按照24个字母的顺序得出为：II→M→Q→S=3168" imageName:@"level_13_22.jpg"],[Cheats getCheatsByTitle:@"打开之后就得到最后一个通关部件了" imageName:@"level_13_23.jpg"],[Cheats getCheatsByTitle:@"来到大门这里，将三个部件放入相应的凹槽中去，就可以得到这扇大门了" imageName:@"level_13_24.jpg"],nil];
    }else if(self.level==13){
        
        _nsArray = [[NSArray alloc] initWithObjects:[Cheats getCheatsByTitle:@"在第14关这里，我们可以在场景的左侧得到一把刀子，在右侧桌子这里得到一个直筒望远镜以及一个黑色手套" imageName:@"level_14_1.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_14_2.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_14_3.jpg"],[Cheats getCheatsByTitle:@"接着点击左侧的木箱，在木箱上面有一个划痕，使用刚刚得到的小刀将表面的布袋割开" imageName:@"level_14_4.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_14_5.jpg"],[Cheats getCheatsByTitle:@"割开之后得到里头的一个开关闸，而另外一个盒子则缺少工具，暂时开不了" imageName:@"level_14_6.jpg"],[Cheats getCheatsByTitle:@"来到场景中央的桌子这里，这里左侧是一个密码器，右侧是提示线索，我需要找到三个字符的值，也就是密码了" imageName:@"level_14_7.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_14_8.jpg"],[Cheats getCheatsByTitle:@"使用手套打开地板上的通道" imageName:@"level_14_9.jpg"],[Cheats getCheatsByTitle:@"将缺失的开关闸放置上去，然后收起右侧的螺丝刀，同时从左侧墙上得到其中一个符号的数值为2" imageName:@"level_14_10.jpg"],[Cheats getCheatsByTitle:@"这边需要调整两侧三个开关闸，将中间刻度表的指针都弄到“0”，这样就可以打开暗格获得一把呆扳手" imageName:@"level_14_11.jpg"],[Cheats getCheatsByTitle:@"得到呆扳手第一个想到的就是之前木箱里头的小盒子，那几个螺母需要用呆扳手拆除，搞定后里头是一把钥匙" imageName:@"level_14_12.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_14_13.jpg"],[Cheats getCheatsByTitle:@"之前得到的一个字符的值之后，在桌子的线索卡这里我们就可以依次得到三个字符是多少了，得到密码：437" imageName:@"level_14_14.jpg"],[Cheats getCheatsByTitle:@"密码输入正确后会打开中间的圆盘，这里点击望远镜，在望远镜上面有两个螺丝，正好我们有螺丝刀，使用螺丝刀将望远镜的镜片拆出来。" imageName:@"level_14_15.jpg"],[Cheats getCheatsByTitle:@"得到了镜片后，将镜片安装到圆盘中，我们就可以得到一个有关格子的线索了" imageName:@"level_14_16.jpg"],[Cheats getCheatsByTitle:@"这里格子不是按照背景那样，在镜片中两个角落各有一个虫子和一个皇冠，还有云彩阻隔着，这是提示我们虫子到达皇冠的最短路线。" imageName:@"level_14_17.jpg"],[Cheats getCheatsByTitle:@"弄清楚了上面的线索之后，点击场景的正中，这里有一个上锁的柜子，使用之前得到的钥匙打开" imageName:@"level_14_18.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_14_19.jpg"],[Cheats getCheatsByTitle:@"打开之后按照之前推敲出来的线索，将虫子的路线弄出来，如下图所示：" imageName:@"level_14_20.jpg"],[Cheats getCheatsByTitle:@"搞定之后退出来就会发现左侧的机关门以及打开了" imageName:@"level_14_21.jpg"],nil];
    }else if(self.level==14){
        
        _nsArray = [[NSArray alloc] initWithObjects:[Cheats getCheatsByTitle:@" 游戏的第15关可以说是关卡部分的最后一关了，但是没有全结束，那么作为关卡最后一关都有哪些难点呢？首先查看场景的地毯这里。" imageName:@"level_15_1.jpg"],[Cheats getCheatsByTitle:@"得到一个转笔刀，在地毯下面搭线一颗宝石" imageName:@"level_15_2.jpg"],[Cheats getCheatsByTitle:@"接着点击右侧的小桌子，在这里可以得到一把铅笔" imageName:@"level_15_3.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_15_4.jpg"],[Cheats getCheatsByTitle:@"使用转笔刀将铅笔修好，然后对着桌上的纸张进行书写" imageName:@"level_15_5.jpg"],[Cheats getCheatsByTitle:@"点击收起那张提示纸。在下方可以得到小柜子的钥匙" imageName:@"level_15_6.jpg"],[Cheats getCheatsByTitle:@"对右侧小柜子使用钥匙，打开之后可以得到里头的小铲子和一枚棋子，此外将提示纸放到镜子那边，镜子中反射出来的线索终于看的懂了。" imageName:@"level_15_7.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_15_8.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_15_9.jpg"],[Cheats getCheatsByTitle:@"接着将棋子放回原位，然后依次点击使其发亮，点到最后一个的时候机关就打开了。" imageName:@"level_15_10.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_15_11.jpg"],[Cheats getCheatsByTitle:@"机关打开之后得到第二颗宝石" imageName:@"level_15_12.jpg"],[Cheats getCheatsByTitle:@"来到大门这里，使用小铲子将门上的第三个宝石弄下来。" imageName:@"level_15_13.jpg"],[Cheats getCheatsByTitle:@"接着点击王座下方的底座，这边有E1、V2、A2、V1" imageName:@"level_15_14.jpg"],[Cheats getCheatsByTitle:@"相信大家都知道坐标的XY轴吧！，对照之前的线索得到正确的密码：4951" imageName:@"level_15_15.jpg"],[Cheats getCheatsByTitle:@"打开之后得到最后一枚宝石" imageName:@"level_15_16.jpg"],[Cheats getCheatsByTitle:@"回到右侧的桌子这里，观察那本书，我们会发现这四种颜色中黄色相对要独立的。" imageName:@"level_15_17.jpg"],[Cheats getCheatsByTitle:@"来到画像这里可以看出其中三个是“17”开头的，唯独一个“18”可以和独立的黄色有所关联，所以我们将黄色的宝石放到1819那个凹槽中，然后就可以很容易的让另外三个宝石归位，得到大门的钥匙。" imageName:@"level_15_18.jpg"],[Cheats getCheatsByTitle:@"使用大门的钥匙打开大门，即可通关。" imageName:@"level_15_19.jpg"],nil];
    }
    /**
     else if(self.level==9){
     
     _nsArray = [[NSArray alloc] initWithObjects:[Cheats getCheatsByTitle:@"" imageName:@"level_9_1.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_9_2.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_9_3.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_9_4.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_9_5.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_9_6.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_9_7.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_9_8.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_9_9.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_9_10.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_9_11.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_9_12.jpg"],[Cheats getCheatsByTitle:@"" imageName:@"level_9_13.jpg"],nil];
     }
     */
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
