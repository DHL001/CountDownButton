//
//  CountDownButton.h
//  CountDownButton
//
//  Created by mc on 2019/1/10.
//  Copyright © 2019年 Justin. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CountDownButton;
typedef NSString* (^DidChangeBlock)(CountDownButton *countDownButton,int second);
typedef NSString* (^DidFinishedBlock)(CountDownButton *countDownButton,int second);

typedef void (^TouchedDownBlock)(CountDownButton *countDownButton,NSInteger tag);

@interface CountDownButton : UIButton
{
    int _second;
    int _totalSecond;
    UIBackgroundTaskIdentifier backgroundUpdateTask;
    NSTimer *_timer;
    DidChangeBlock _didChangeBlock;
    DidFinishedBlock _didFinishedBlock;
    TouchedDownBlock _touchedDownBlock;
}
-(void)addToucheHandler:(TouchedDownBlock)touchHandler;
-(void)didChange:(DidChangeBlock)didChangeBlock;
-(void)didFinished:(DidFinishedBlock)didFinishedBlock;
-(void)startWithSecond:(int)second;
- (void)stop;
@end


