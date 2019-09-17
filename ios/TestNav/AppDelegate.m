/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "AppDelegate.h"
#import "NavCoordinator.h"

#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import <React/RCTSurfaceHostingView.h>
#import <React/RCTSurfaceSizeMeasureMode.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:launchOptions];
  
  UIView *rootView = [[RCTSurfaceHostingView alloc] initWithBridge:bridge moduleName:@"App2" initialProperties:@{} sizeMeasureMode:RCTSurfaceSizeMeasureModeWidthAtMost | RCTSurfaceSizeMeasureModeHeightAtMost];
  rootView.translatesAutoresizingMaskIntoConstraints = NO;

 // rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];

  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  
  UIViewController *rootViewController = [UIViewController new];
  rootViewController.navigationItem.title = @"App";
  
  UIViewController *navController = [[UINavigationController alloc] initWithRootViewController:rootViewController];
  
  [rootViewController.view addSubview:rootView];
  
  rootView.frame = CGRectMake(0, 0, rootViewController.view.frame.size.width, rootViewController.view.frame.size.height);
  
  if (@available(iOS 11.0, *)) {
    [rootView.topAnchor constraintEqualToAnchor:rootViewController.view.safeAreaLayoutGuide.topAnchor].active = YES;
    [rootView.bottomAnchor constraintEqualToAnchor:rootViewController.view.safeAreaLayoutGuide.bottomAnchor].active = YES;
    [rootView.leadingAnchor constraintEqualToAnchor:rootViewController.view.safeAreaLayoutGuide.leadingAnchor].active = YES;
    [rootView.trailingAnchor constraintEqualToAnchor:rootViewController.view.safeAreaLayoutGuide.trailingAnchor].active = YES;
  } else {
    [rootView.topAnchor constraintEqualToAnchor:rootViewController.topLayoutGuide.bottomAnchor].active = YES;
    [rootView.bottomAnchor constraintEqualToAnchor:rootViewController.bottomLayoutGuide.topAnchor].active = YES;
    [rootView.leadingAnchor constraintEqualToAnchor:rootViewController.view.layoutMarginsGuide.leadingAnchor].active = YES;
    [rootView.trailingAnchor constraintEqualToAnchor:rootViewController.view.layoutMarginsGuide.trailingAnchor].active = YES;
  }
  
  
  rootViewController.view.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];
  
  UIStoryboard *launshStoryboard = [UIStoryboard storyboardWithName:@"LaunchScreen" bundle:nil];
  UIViewController *launchVC = [launshStoryboard instantiateInitialViewController];
  
  [NSTimer scheduledTimerWithTimeInterval:1 repeats:NO block:^(NSTimer * _Nonnull timer) {
    [launchVC presentViewController:navController animated:NO completion:nil];
  }];
  
  [[NavCoordinator sharedInstance] setCurrentVC:rootViewController];
  [[NavCoordinator sharedInstance] setBridge:bridge];
  
  self.window.rootViewController = launchVC;
  [self.window makeKeyAndVisible];
  return YES;
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
#else
  return [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
#endif
}

@end
