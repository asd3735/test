//
//  AppDelegate.m
//  test03
//
//  Created by 吴超凡 on 2016/11/24.
//  Copyright © 2016年 吴超凡. All rights reserved.
//

#import "AppDelegate.h"
#import "IndexViewController.h"

@interface AppDelegate ()
@property (strong ,nonatomic)IndexViewController *indexViewController;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //OC需要添加的代码
    self.window=[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor=[UIColor whiteColor];
    
    
    //初始化tabBarController
    self.indexViewController=[[IndexViewController alloc] initWithNibName:@"IndexViewController" bundle:nil];
    self.navigationController=[[UINavigationController alloc]
                              initWithRootViewController:_indexViewController];
    
    self.window.rootViewController=self.navigationController;
    
    //设置Window为主窗口并显示出来
    [self.navigationController setNavigationBarHidden:YES];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    //发送应用程序时将从活跃不活跃的状态。这可能发生某些类型的暂时中断(如电话来电或短信)或当用户退出应用程序开始转换到背景状态。
    
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    //使用这种方法暂停正在进行的任务,禁用计时器,节流OpenGL ES帧率。游戏应该使用这个方法来暂停游戏。
    
    
    
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    //使用此方法来释放共享资源,保存用户数据,无效计时器,和储存足够多的应用程序状态信息来恢复您的应用程序的当前状态,以防它终止后。
    
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    //如果您的应用程序支持后台执行,而不是调用此方法applicationWillTerminate:当用户退出。

}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    //称为部分从背景过渡到非活动状态,在这里你可以撤消的许多进入背景所做的更改。
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    
    //重新启动任何任务暂停(或没有开始),而应用程序是不活跃的。如果应用程序在后台以前,可选更新用户界面。
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.    
    //当应用程序将终止。如果适当的保存数据。看到也applicationDidEnterBackground:。
}

@end
