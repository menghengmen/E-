//
//  GuideViewController.m
//  Yueshijia
//
//  Created by CosyVan on 2016/11/20.
//  Copyright © 2016年 Jeffery. All rights reserved.
//

#import "GuideViewController.h"
#import "MainTabBarController.h"


@interface GuideViewController ()<UIScrollViewDelegate>
@property (nonatomic, weak) UIScrollView *scroll;
@property (nonatomic, weak) UIPageControl *pageControl;
@end

@implementation GuideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIScrollView *scroll = [[UIScrollView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    scroll.contentSize = CGSizeMake(SCREENWIDTH * 5, SCREENHEIGHT);
    scroll.bounces = NO;
    scroll.showsHorizontalScrollIndicator = NO;
    scroll.pagingEnabled = YES;
    self.scroll = scroll;
    scroll.delegate = self;
    [self.view addSubview:scroll];
    
    for (int i=0; i<5; i++) {
        UIImageView *imageView = [[UIImageView alloc] init];
        NSString *name = [NSString stringWithFormat:@"bg_guide_6_%d",i+1];
        imageView.image = [UIImage imageNamed:name];
        imageView.frame = CGRectMake(SCREENWIDTH*i, 0, SCREENWIDTH, SCREENHEIGHT);
        [scroll addSubview:imageView];
        if (i==4) {
            UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
            btn.backgroundColor = [UIColor clearColor];
            btn.frame = CGRectMake(SCREENWIDTH*i + 100, SCREENHEIGHT * 0.75, SCREENWIDTH-200, SCREENHEIGHT * 0.15);
            [btn addTarget:self action:@selector(startApp) forControlEvents:UIControlEventTouchUpInside];
            [scroll addSubview:btn];
        }
    }
    
    UIPageControl *pageControl = [[UIPageControl alloc] init];
    pageControl.frame = CGRectMake(SCREENWIDTH * 0.45, SCREENHEIGHT * 0.9, 100, 44);
    pageControl.pageIndicatorTintColor = [UIColor lightGrayColor];
    pageControl.numberOfPages = 4;
    self.pageControl = pageControl;
    pageControl.currentPageIndicatorTintColor = [UIColor colorWithRed:211/255.0 green:192/255.0 blue:162/255.0 alpha:1.0];
    [self.view addSubview:pageControl];
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    long page = scrollView.contentOffset.x / SCREENWIDTH;
    
    if (page == 4) {
        self.pageControl.hidden = YES;
    } else {
        self.pageControl.hidden = NO;
    }
    self.pageControl.currentPage = (NSInteger)page+0.5;
}

- (void)startApp
{
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    window.rootViewController = [[MainTabBarController alloc] init];

    [XDCommonTool saveToUserDefaultWithBool:YES key:is_first_login];


}

- (void)dealloc
{
    NSLog(@"self----dealloc");
}

@end
