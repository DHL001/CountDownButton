//
//  ViewController.m
//  CountDownButton
//
//  Created by mc on 2019/1/10.
//  Copyright © 2019年 Justin. All rights reserved.
//

#import "ViewController.h"
#import "CountDownButton.h"
@interface ViewController ()
@property (nonatomic,strong) CountDownButton *downButton;
@end

@implementation ViewController
- (CountDownButton *)downButton{
    if (!_downButton) {
        _downButton = [[CountDownButton alloc]init];
        _downButton.frame = CGRectMake(30, 170, 80, 30);
        _downButton.backgroundColor = [UIColor whiteColor];
        [_downButton setTitle:@"发送验证码" forState:UIControlStateNormal];
        _downButton.layer.cornerRadius = 15;
        _downButton.layer.borderColor = [UIColor redColor].CGColor;
        _downButton.layer.borderWidth = 1;
        _downButton.titleLabel.font = [UIFont systemFontOfSize:10];
        [_downButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [_downButton addTarget:self action:@selector(downButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _downButton;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.downButton];
    
}

- (void)downButtonClick:(CountDownButton *)sender{
    
    [sender startWithSecond:10];
    [sender didChange:^NSString *(CountDownButton *countDownButton,int second) {
        NSString *title = [NSString stringWithFormat:@"剩余%d秒",second];
        sender.layer.borderColor = [UIColor lightGrayColor].CGColor;
        [sender setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        sender.enabled = NO;
        return title;
    }];
    [sender didFinished:^NSString *(CountDownButton *countDownButton, int second) {
        sender.layer.borderColor = [UIColor redColor].CGColor;
        [sender setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        sender.enabled = YES;
        return @"重新获取";
    }];
    
}

@end
