//
//  DEMOFirstViewController.m
//  RESideMenuExample
//
//  Created by Roman Efimov on 10/10/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import "DEMOFirstViewController.h"
#import "CheatsListCell.h"
#import "CheatsDetailViewController.h"

@interface DEMOFirstViewController ()
@property (nonatomic,strong) UITableView  *  tableView;
@property (nonatomic,strong) NSArray * nsArray;
@end

@implementation DEMOFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.title = @"秘籍";
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"设置"
                                                                             style:UIBarButtonItemStylePlain
                                                                            target:self
                                                                            action:@selector(presentLeftMenuViewController:)];
    /**
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Right"
                                                                             style:UIBarButtonItemStylePlain
                                                                            target:self
                                                                            action:@selector(presentRightMenuViewController:)];
     */
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    imageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    imageView.image = [UIImage imageNamed:@"Balloon"];
    [self.view addSubview:imageView];
    
    [[UIApplication sharedApplication] setApplicationSupportsShakeToEdit:YES];
    
    [self becomeFirstResponder];
    [self initTableView];
    [self createData];
}

-(void)createData
{
    _nsArray = [[NSArray alloc] initWithObjects:@"第一关攻略", @"第二关攻略",@"第三关攻略",@"第四关攻略",@"第五关攻略",@"第六关攻略",@"第七关攻略",@"第八关攻略",@"第九关攻略",@"第十关攻略",@"第十一关攻略",@"第十二关攻略",@"第十三关攻略",@"第十四关攻略",@"第十五关攻略",nil];
    
}

#pragma mark - init
- (void)initTableView{
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, UI_SCREEN_WIDTH, UI_SCREEN_HEIGHT - 64) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.showsVerticalScrollIndicator = NO;
    _tableView.sectionIndexBackgroundColor = [UIColor clearColor];
    _tableView.sectionIndexColor = [UIColor grayColor];
    _tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, UI_SCREEN_WIDTH, 0.01)];
    [self.view addSubview:_tableView];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [_nsArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString * MMHotelListCell = @"CheatsListCell";
    CheatsListCell * cell = [tableView dequeueReusableCellWithIdentifier:MMHotelListCell];
    if (cell == nil) {
        cell = [[NSBundle mainBundle] loadNibNamed:MMHotelListCell owner:self options:NULL][0];
        //cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    cell.textLabel.text = [_nsArray objectAtIndex:indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CheatsDetailViewController * cheatsDetailView = [[CheatsDetailViewController alloc] initWithNibName:@"CheatsDetailViewController" bundle:nil];
    [self.navigationController pushViewController:cheatsDetailView animated:YES];
    cheatsDetailView.level = indexPath.row;
    cheatsDetailView.hidesBottomBarWhenPushed = YES;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"DEMOFirstViewController will appear");
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"DEMOFirstViewController will disappear");
}

@end
