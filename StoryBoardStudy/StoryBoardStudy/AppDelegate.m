//
//  AppDelegate.m
//  StoryBoardStudy
//
//  Created by 马霄 on 2018/12/12.
//  Copyright © 2018 马霄. All rights reserved.
//

#import "AppDelegate.h"
#import "MXBaseNavigationController.h"
#import "ViewController.h"
#import "MXTabBarViewController.h"

@interface AppDelegate ()

/**
 跟视图控制器
 */
@property (nonatomic, strong) MXTabBarViewController *tabBarController;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    ViewController *vc = [[ViewController alloc] init];
    MXBaseNavigationController *navi = [[MXBaseNavigationController alloc] initWithRootViewController:vc];
    [self.window setRootViewController:navi];
//
//    [self.window setRootViewController:self.tabBarController];
//    [self.window makeKeyWindow];
    return YES;
}


#pragma mark - Getter/Setter
- (MXTabBarViewController *)tabBarController {
    if (!_tabBarController) {
        _tabBarController = [[MXTabBarViewController alloc] init];
    }
    return _tabBarController;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
