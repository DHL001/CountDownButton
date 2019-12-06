//
//  AppDelegate.h
//  CountDownButton
//
//  Created by mc on 2019/1/10.
//  Copyright © 2019年 Justin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


/*
 
 
 *dev2 测试dev2
 
 
 ****
 *dev22 测试dev22

 
 */

@end

