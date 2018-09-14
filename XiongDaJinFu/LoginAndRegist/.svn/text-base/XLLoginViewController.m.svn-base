//
//  XLLoginViewController.m
//  XiongDaJinFu
//
//  Created by 哈哈 on 2017/6/29.
//  Copyright © 2017年 digirun. All rights reserved.
//

#import "XLLoginViewController.h"
#import "GFLoginRegisterView.h"
#import "UIView+AICategory.h"
@interface XLLoginViewController ()
@property (weak, nonatomic) IBOutlet UIView *mideleView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *middleLeading;

@end

@implementation XLLoginViewController
- (IBAction)BtnClick:(UIButton *)sender {

    //切换
    self.middleLeading.constant = self.middleLeading.constant == 0 ? -self.mideleView.frame.size.width * 0.65 : 0;
    [UIView animateWithDuration:0.3 animations:^{
        [self.view layoutIfNeeded];
    }];


}

- (void)viewDidLoad {
    [super viewDidLoad];
    //添加登录View
    GFLoginRegisterView *loginView = [GFLoginRegisterView LoginViewFromXib];
   
    loginView.loginByPasswordBtnClickBlock = ^(NSDictionary * dict){
    //传值
   
    };
    
    [self.mideleView addSubview:loginView];
    
    //添加验证码登录View
    GFLoginRegisterView *registerView = [GFLoginRegisterView RegisterViewFromXib];
   
    loginView.loginBtnClickBlock = ^(NSDictionary * dict){
        
        //传值
    
    };
    [self.mideleView addSubview:registerView];
}

// viewDidLayoutSubviews:才会根据布局调整控件的尺寸
-(void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    
    //设置登录viewFram
    GFLoginRegisterView *loginView = self.mideleView.subviews[0];
    loginView.frame = CGRectMake(0, 0, self.mideleView.frame.size.width  * 0.5, self.mideleView.frame.size.height );
    
    //加验证码登录View
    GFLoginRegisterView *registerView = self.mideleView.subviews[1];
    registerView.frame = CGRectMake(self.mideleView.frame.size.width  * 0.5, 0, self.mideleView.frame.size.width  * 0.5, self.mideleView.frame.size.height );
    
  }


@end
