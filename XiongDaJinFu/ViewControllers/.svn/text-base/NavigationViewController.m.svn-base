//
//  NavigationViewController.m
//  Yueshijia
//
//  Created by CosyVan on 2016/11/20.
//  Copyright © 2016年 Jeffery. All rights reserved.
//

#import "NavigationViewController.h"
#import "UIView+AICategory.h"
@interface NavigationViewController ()

@end

@implementation NavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

/**
 *  拦截所有控制器的push控制器
 *
 *  @param viewController 即将到来的控制器
 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count > 0) {
        //自动隐藏tabbar
        [viewController setHidesBottomBarWhenPushed:YES];
        /**
         *  设置barButton
         */
        viewController.navigationItem.leftBarButtonItem = [self itemWithTarget:self action:@selector(back) image:@"nav_return_normal" highImage:@"nav_return_normal"];
        //
        //        viewController.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(more) image:@"navigationbar_more" highImage:@"navigationbar_more_highlighted"];
        UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //        [backButton setTitle:@"返回" forState:UIControlStateNormal];
        [backButton setImage:[UIImage imageNamed:@"nav_left_back_icon@2x"] forState:UIControlStateNormal];
        //        [backButton setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
        [backButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [backButton setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        [backButton sizeToFit];
        [backButton addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
        // 设置导航条返回按钮
        viewController.navigationItem.leftBarButtonItem = backItem;
        
    }
    
    [super pushViewController:viewController animated:animated];


}

- (void)back
{
   
    
    
    [self popViewControllerAnimated:YES];
}

- (void)more
{
    [self popToRootViewControllerAnimated:YES];
}


- (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage
{
    /**
     *  设置返回barButton
     */
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    //设置图片
    [btn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    //设置尺寸
    btn.size = btn.currentBackgroundImage.size;
    
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}
@end
