//
//  LoginViewController.m
//  MaDongFrame
//
//  Created by 码动 on 16/10/8.
//  Copyright © 2016年 digirun. All rights reserved.
//

#import "LoginViewController.h"
#import "registerViewController.h"
#import "MainTabBarController.h"
#import "UIViewController+HUD.h"
@implementation LoginViewController
{

    UITextField * nameTextField;
    UITextField * passwordField;


}
- (void)viewDidLoad{


    [self setUpUI];

}
- (void)setUpUI{

   UIImageView  * backImage=  [XDCommonTool newImageViewWithName:@"dl_bg"];
    backImage.frame = CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGHT);
    [self.view addSubview:backImage];


  //logo
//   UIImageView  * logoImageView =  [XDCommonTool newImageViewWithName:@"ICON"];
//    [self.view addSubview:logoImageView];
//    [logoImageView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(self.view.mas_top).offset(SCREENHEIGHT/5);
//        make.centerX.equalTo(self.view.mas_centerX);
//        make.width.equalTo(@(250/2));
//        make.height.equalTo(@(186/2));
//
//    }];
   
    UILabel  * titleLabel = [XDCommonTool newlabelWithTextColor:[UIColor whiteColor] withTitle:@"E 心关爱" fontSize:34];
    [self.view addSubview:titleLabel];
        [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.view.mas_top).offset(240/2);
            make.centerX.equalTo(self.view.mas_centerX);
            make.width.equalTo(@(250));
            make.height.equalTo(@(70/2));
    
        }];
    
   
    
    UIView  * backgroundView = [[UIView alloc] init];
    backgroundView.backgroundColor  = [UIColor  whiteColor];
    backgroundView.layer.cornerRadius= 5;
    backgroundView.clipsToBounds = YES;
    [self.view addSubview:backgroundView];
    [backgroundView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.top.equalTo(self.view.mas_top).offset(212);
                make.centerX.equalTo(self.view.mas_centerX);
                make.width.equalTo(@(638/2));
                make.height.equalTo(@(496/2));
        
            }];
     //用户名
    nameTextField =  [XDCommonTool newTextFieldWithStyle:UITextBorderStyleRoundedRect withPlaceHolder:@"   用户账号"];
     // 修改光标位置
    nameTextField.leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 0)] ;
    nameTextField.leftView.userInteractionEnabled = NO;
    nameTextField.leftViewMode = UITextFieldViewModeAlways;
   
    [nameTextField setValue:[UIColor colorWithHexString:@"#999999"] forKeyPath:@"_placeholderLabel.textColor"];

    nameTextField.font = [UIFont systemFontOfSize:15];
    [backgroundView addSubview:nameTextField];
    [nameTextField mas_makeConstraints:^(MASConstraintMaker *make) {

        make.centerX.equalTo(backgroundView.mas_centerX);
        make.top.equalTo(backgroundView.mas_top).offset(32);
        make.left.equalTo(backgroundView.mas_left).offset(15);
        make.height.equalTo(@41);
        
    }];
    //
    UIImageView  * textImageView = [XDCommonTool newImageViewWithName:@"dl_yhm"];
    [backgroundView addSubview:textImageView];
    [textImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(nameTextField.mas_centerY);
        make.left.equalTo(nameTextField.mas_left).offset(10);
        make.height.equalTo(@20);
        make.width.equalTo(@20);

    }];
    //密码
    passwordField =  [XDCommonTool newTextFieldWithStyle:UITextBorderStyleRoundedRect withPlaceHolder:@"  请输入密码"];
   
    // 修改光标位置
    passwordField.leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 0)] ;
    passwordField.leftView.userInteractionEnabled = NO;
    passwordField.leftViewMode = UITextFieldViewModeAlways;

    
    [backgroundView addSubview:passwordField];
    passwordField.font = [UIFont systemFontOfSize:15];
    [passwordField setValue:[UIColor colorWithHexString:@"#999999"] forKeyPath:@"_placeholderLabel.textColor"];

    [passwordField mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(nameTextField.mas_bottom).offset(15);
        make.centerX.equalTo(backgroundView.mas_centerX);
        make.left.equalTo(backgroundView.mas_left).offset(15);
        make.height.equalTo(@41);
        
    }];
    UIImageView  * passWordImageView = [XDCommonTool newImageViewWithName:@"dl_mm"];
    [backgroundView addSubview:passWordImageView];
    [passWordImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(passwordField.mas_centerY);
        make.left.equalTo(passwordField.mas_left).offset(10);
        make.height.equalTo(@20);
        make.width.equalTo(@20);
        
    }];
 
   
    
    
    
    //选择记住密码
    UIButton  * chooseBtn =   [XDCommonTool newButtonWithType:UIButtonTypeCustom normalImage:@"tc_xz" buttonTitle:nil target:self action:@selector(rememberPassword:)];
    [backgroundView addSubview:chooseBtn];
    
    [chooseBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(passwordField.mas_bottom).offset(15);
        make.left.equalTo(backgroundView.mas_left).offset(15);
        make.height.equalTo(@20);
        make.width.equalTo(@20);

    }];

    
    UILabel  * rememberLabel  = [XDCommonTool newlabelWithTextColor:[UIColor grayColor] withTitle:@"记住密码" fontSize:14];
    [backgroundView addSubview:rememberLabel];
    rememberLabel.textAlignment = NSTextAlignmentLeft;
    [rememberLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.top.equalTo(passwordField.mas_bottom).offset(15);
        make.left.equalTo(chooseBtn.mas_right).offset(15);
        make.height.equalTo(@20);
        make.width.equalTo(@100);
        
    }];
    
    
    
      UIButton *login = [UIButton buttonWithType:UIButtonTypeCustom];
    [login setTitle:@"登 录" forState:UIControlStateNormal];
    [login setBackgroundColor:[UIColor colorWithHexString:@"#0383DA"]];
    login.layer.cornerRadius = 6;
    [login addTarget:self action:@selector(LoginBtn) forControlEvents:UIControlEventTouchUpInside];
    [backgroundView addSubview:login];
    [login mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(rememberLabel.mas_bottom).offset(20);
        make.centerX.equalTo(backgroundView.mas_centerX);
        make.left.equalTo(backgroundView.mas_left).offset(15);
        make.height.equalTo(@42);
        
    }];

 }

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    [nameTextField resignFirstResponder];
    [passwordField resignFirstResponder];
}

# pragma mark
# pragma mark - ACTION
-(void)rememberPassword:(UIButton*)sender{
    if (sender.selected ==YES) {
        sender.selected = NO;
        [sender setImage:[UIImage imageNamed:@"tc_xz"] forState:UIControlStateNormal];
    }
    
    else {
        sender.selected = YES;
        
        [sender setImage:[UIImage imageNamed:@"tc_xz_pre"] forState:UIControlStateNormal];
        
        
    }

}

# pragma mark
# pragma mark - 登录

- (void)LoginBtn{

    NSString  * str = [NSString stringWithFormat:@"%@?uiAccount=%@&uiPwd=%@",URL_LOGIN,nameTextField.text,passwordField.text];
    
        [[NetworkClient sharedClient] POST:str dict:nil succeed:^(id data) {
            NSLog(@"%@",data);
           
            NSArray  * dataArr = (NSArray*)data;
            if (dataArr.count==0) {
                [self showHint:@"登录名或密码错误"];
                return ;
            }
            
            NSDictionary*dict = dataArr.firstObject;
           
            
            if ([[dict objectForKey:@"loginStatus"] integerValue]==0) {
                [self showHint:@"登录成功"];
                
                [XDCommonTool saveToUserDefaultWithDic:(NSDictionary*)data key:USER_INFO];
               
                [XDCommonTool saveToUserDefaultWithString:@"yes" key:USER_LOGIN];
                [UIApplication sharedApplication].keyWindow
                .rootViewController = [[MainTabBarController alloc] init];
                

            }else{
                [self showHint:@"登录名或密码错误"];

            }
            
        } failure:^(NSError *error) {
            NSLog(@"%@",error);
            
        }];
        
}



@end
