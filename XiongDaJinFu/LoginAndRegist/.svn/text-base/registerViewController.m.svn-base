//
//  registerViewController.m
//  XiongDaJinFu
//
//  Created by gary on 2016/12/6.
//  Copyright © 2016年 digirun. All rights reserved.
//

#import "registerViewController.h"
#import "XLInfoTextCell.h"
#define Count 60

@interface registerViewController ()<UITableViewDelegate,UITableViewDataSource,XLInfoTextCellDelegate>
{

    UITableView  * registerTableView;

}

//复选框button
@property (nonatomic,weak)UIButton *button;
@property (nonatomic,weak)UIButton *getButton;
@property (nonatomic,weak)NSTimer *timer;
@property (nonatomic,weak)UILabel  *label;
@end
@implementation registerViewController
{
    UITableView *_tableView;
    NSInteger _count;
}


- (void)viewDidLoad{
    
   
    self.title = @"注册";
    [self setUpNewNai:@"返回" Title:@"注册" ];
    [self setUpUI];

    self.view.backgroundColor = [UIColor colorWithHexString:@"#f0f0f0"];

}

- (void)setUpUI{
    
        
        self.view.backgroundColor = [UIColor whiteColor];
        self.title  = @"注册";
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 70, [UIScreen mainScreen].bounds
.size.width, 50*4) style:UITableViewStylePlain];
        _tableView.delegate =self;
        _tableView.dataSource =self;
        _tableView.scrollEnabled = NO;
        [self.view addSubview:_tableView];
        
        UIButton *registButton = [UIButton buttonWithType:UIButtonTypeCustom];
           registButton.frame = CGRectMake([UIScreen mainScreen].bounds
             .size.width/2-150, _tableView.frame.origin.y+_tableView.frame.size.height+30,300,45);
    registButton.backgroundColor = [UIColor greenColor];
    [registButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [registButton setTitle:@"注册" forState:UIControlStateNormal];
    
    [registButton addTarget:self action:@selector(registerClick) forControlEvents:UIControlEventTouchUpInside];
        [registButton setBackgroundImage:[UIImage imageNamed:@"registered"] forState:UIControlStateNormal];
        [self.view addSubview:registButton];
        
        self.automaticallyAdjustsScrollViewInsets = NO;
        
        
        NSInteger protocolY = registButton.frame.origin.y + registButton.frame.size.height + 20;
        
        UIButton *bt = [UIButton buttonWithType:UIButtonTypeCustom];
        bt.frame = CGRectMake(registButton.frame.origin.x, protocolY+10,20,20);
        //    [bt setBackgroundColor:[UIColor redColor]];
        
        [bt setImage:[UIImage imageNamed:@"choice1"] forState:UIControlStateSelected];
        [bt setImage:[UIImage imageNamed:@"xiaokuang"] forState:UIControlStateNormal];
        bt.selected = YES;
        self.button = bt;
        [bt addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(bt.frame.origin.x+bt.frame.size.width+1, protocolY,100, 40)];
        label.font = [UIFont systemFontOfSize:14];
        label.text = @"我已看过并同意";
        
        UIButton * protocol = [UIButton buttonWithType:UIButtonTypeCustom];
        protocol.titleLabel.font = [UIFont systemFontOfSize:14];
        protocol.titleLabel.textAlignment = NSTextAlignmentLeft;
        [protocol addTarget:self action:@selector(protocolClick) forControlEvents:UIControlEventTouchUpInside];
        [protocol setTitle:@"《旅游去吧服务条款》" forState:UIControlStateNormal];
        [protocol setTitleColor:kGreenColor forState:UIControlStateNormal];
        protocol. frame = CGRectMake(label.frame.origin.x+label.frame.size.width, protocolY,160, 40) ;
        
        
        [self.view addSubview:bt];
        [self.view addSubview:label];
        [self.view addSubview:protocol];
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(0, 0, 15,25);
        [button setBackgroundImage:[UIImage imageNamed:@"return_top"] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(backTo) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:button];
        self.navigationItem.leftBarButtonItem = item;
        
        
        
        NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(labelChange) userInfo:nil repeats:YES];
        self.timer =timer;
        [timer setFireDate:[NSDate distantFuture]];
        _count = Count;
        
        
}
-(void)labelChange
{
    _count --;
    if (_count<0) {
        _count = Count;
        [self.timer setFireDate:[NSDate distantFuture]];
        self.label.alpha = 0;
        self.getButton.alpha = 1;
        XLInfoTextCell *cell = [_tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0]];
        cell.text.enabled = YES;
        return;
    }
    self.label.text = [NSString stringWithFormat:@"重新发送%ld",(long)_count];
    
}
-(void)getCode{
    [self.timer setFireDate:[NSDate  distantPast]];
    self.label.alpha = 1;
    self.getButton.alpha = 0;
    self.label.text = [NSString stringWithFormat:@"重新发送%d",Count];
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
    XLInfoTextCell *cell = [XLInfoTextCell  infoText:tableView];
    cell.text.textAlignment = NSTextAlignmentLeft;
    cell.name.textAlignment = NSTextAlignmentCenter;
    cell.delegate = self;
    
    cell.text.enabled = YES;
    if (indexPath.row == 0) {
        UIButton *button  = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(globalRect.size.width-90,10,70,30);
        button.titleLabel.font = [UIFont systemFontOfSize:12];
        button.layer.cornerRadius = 5;
        button.layer.masksToBounds = YES;
        [button setTitle:@"获取验证码" forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
        [button addTarget:self action:@selector(getCode) forControlEvents:UIControlEventTouchUpInside];
        button.layer.borderWidth= 0.5;
      //  button.tintColor =  kBarSelecterColor;
        self.getButton = button;
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(globalRect.size.width-90,10,70,30)];
        //label.textColor = kBarSelecterColor;
        self.label  = label;
        
        label.text = [NSString stringWithFormat:@"重新发送%d",Count];
        label.alpha = 0;
        label.font = [UIFont systemFontOfSize:12];
        [cell addSubview:label];
        [cell addSubview:button];
        cell.name.text = @"手  机  号";
        cell.text.placeholder = @"请输入手机号";
    }
    if (indexPath.row == 1) {
        cell.name.text = @"验  证  码";
        cell.text.placeholder = @"输入验证码";
    }
    if (indexPath.row == 2) {
        cell.name.text = @"密        码";
        cell.text.secureTextEntry = YES;
        cell.text.placeholder = @"输入密码";
    }
    if (indexPath.row == 3) {
        cell.name.text = @"确认密码";
        cell.text.secureTextEntry = YES;
        cell.text.placeholder = @"再次输入密码";
    }
    return cell;
}

- (void)registerClick {



}
-(void)protocolClick{

}
@end
