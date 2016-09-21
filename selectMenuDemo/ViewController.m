//
//  ViewController.m
//  selectMenuDemo
//
//  Created by timtian on 16/8/29.
//  Copyright © 2016年 timtian. All rights reserved.
//

#import "ViewController.h"
#import "KxMenu.h"

@interface ViewController ()
{
//    UIButton *_btn1;
//    UIButton *_btn2;
//    UIButton *_btn3;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0.96f green:0.96f blue:0.96f alpha:1.00f];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void) loadView
{
    CGRect frame = [UIScreen mainScreen] .bounds;
    
    self.view = [[UIView alloc] initWithFrame:frame];
//    self.view.backgroundColor = [UIColor whiteColor];
    self.view.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth;
   
    
    const CGFloat W = self.view.bounds.size.width;
    const CGFloat H = self.view.bounds.size.height;
    
    UIView* bgView = [[UIView alloc]initWithFrame:CGRectMake(0, H-50, W, 50)];
    bgView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:bgView];
    NSArray* titleArr = @[@"新手指南",@"常见问题",@"在线客服"];
    
    
    for (int i = 0; i<3; i++) {
       UIButton* btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
        btn1.frame = CGRectMake((W/3)*i, H-45, W/3, 40);
        [btn1 setTitle:titleArr[i] forState:UIControlStateNormal];
    
        [btn1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        btn1.titleLabel.font = [UIFont systemFontOfSize:15];
        btn1.tag = 8000+i;
        [btn1 addTarget:self action:@selector(showMenu:) forControlEvents:UIControlEventTouchUpInside];
        [self.view  addSubview:btn1];
    }

    //设置下拉文字颜色及大小
    [KxMenu setTintColor: [UIColor whiteColor]];
    [KxMenu setTitleFont:[UIFont systemFontOfSize:14]];
}

- (void)showMenu:(UIButton *)sender
{
    NSInteger index = sender.tag-8000;
    switch (index) {
        case 0:
        {
            NSArray* titleArr = @[@"快递查询",@"微信平台",@"在线客服",@"报名客服"];
            NSArray *menuItems =
            @[
              
              
              [KxMenuItem menuItem:titleArr[0]
                             image:nil
                            target:self
                            action:@selector(pushMenuItem:)],
              
              [KxMenuItem menuItem:titleArr[1]
                             image:nil
                            target:self
                            action:@selector(pushMenuItem:)],
              
              [KxMenuItem menuItem:titleArr[2]
                             image:nil
                            target:self
                            action:@selector(pushMenuItem:)],
              
              [KxMenuItem menuItem:titleArr[3]
                             image:nil
                            target:self
                            action:@selector(pushMenuItem:)],
              
              
              ];
            
            
            [KxMenu showMenuInView:self.view
                          fromRect:sender.frame
                         menuItems:menuItems];
        }
            break;
        case 1:
        {
            NSArray* titleArr = @[@"快递查询",@"微信平台",@"在线客服",@"报名客服"];
            NSArray *menuItems =
            @[
              
              
              [KxMenuItem menuItem:titleArr[0]
                             image:nil
                            target:self
                            action:@selector(pushMenuItem:)],
              
              [KxMenuItem menuItem:titleArr[1]
                             image:nil
                            target:self
                            action:@selector(pushMenuItem:)],
              
              [KxMenuItem menuItem:titleArr[2]
                             image:nil
                            target:self
                            action:@selector(pushMenuItem:)],

              ];
            
            
            [KxMenu showMenuInView:self.view
                          fromRect:sender.frame
                         menuItems:menuItems];
        }
            break;
        case 2:
        {
            NSArray* titleArr = @[@"快递查询",@"微信平台",@"在线客服",@"报名客服"];
            NSArray *menuItems =
            @[
              
              
              [KxMenuItem menuItem:titleArr[0]
                             image:nil
                            target:self
                            action:@selector(pushMenuItem:)],
              
              [KxMenuItem menuItem:titleArr[1]
                             image:nil
                            target:self
                            action:@selector(pushMenuItem:)],

              
              ];
            
            
            [KxMenu showMenuInView:self.view
                          fromRect:sender.frame
                         menuItems:menuItems];
        }
            break;
            
        default:
            break;
    }
    
}

- (void) pushMenuItem:(id)sender
{
    NSLog(@"%@", sender);
    
}


@end
