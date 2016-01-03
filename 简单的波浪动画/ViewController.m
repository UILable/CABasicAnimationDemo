//
//  ViewController.m
//  简单的波浪动画
//
//  Created by admin on 15/12/23.
//  Copyright © 2015年 AlezJi. All rights reserved.
//
//http://www.jianshu.com/p/95c9d0edce0a

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
/*
 新建一个工程
 在storyboard中拉5个button，分别设置tag值由10到14
 再拉一个button用来启动动画 如下图 拉好约束
 */

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)waveAction:(id)sender {
    for (NSInteger i=0; i<5; i++) {
        UIButton *btn=(UIButton *)[self.view viewWithTag:i+10];
        [self performSelector:@selector(animationForBtn:) withObject:btn afterDelay:0.1*i];
    }
}
-(void)animationForBtn:(UIButton *)btn
{
    CALayer *layer=btn.layer;
    CABasicAnimation *animatinon=[CABasicAnimation animationWithKeyPath:@"transform.scale"];
    [animatinon setTimingFunction:[CAMediaTimingFunction functionWithName:kCAAnimationLinear]];
    [animatinon setDuration:0.2f];
    [animatinon setAutoreverses:YES];
    [animatinon setRemovedOnCompletion:NO];
    [animatinon setFromValue:[NSNumber numberWithFloat:1.0f]];
    [animatinon setToValue:@(2.0f)];
    [layer addAnimation:animatinon forKey:nil];
}

@end
