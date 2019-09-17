//
//  NavCoordinator.m
//  TestNav
//
//  Created by Алексей Савельев on 01/08/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "NavCoordinator.h"
#import <React/RCTConvert.h>
#import <React/RCTSurfaceHostingView.h>
#import <React/RCTSurfaceSizeMeasureMode.h>

@implementation NavCoordinator

RCT_EXPORT_MODULE();

static NavCoordinator *_instance = nil;

+ (NavCoordinator *)sharedInstance {
  static dispatch_once_t onceToken;
  
  dispatch_once(&onceToken, ^{
    _instance = [[NavCoordinator alloc] init];
  });
  
  return _instance;
}

- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}

RCT_EXPORT_METHOD(presentVC:(NSDictionary *)params) {
  NSString *ID = [RCTConvert NSString:params[@"id"]];
  NSString *title = [RCTConvert NSString:params[@"title"]];
  UIColor *backgroundColor = [RCTConvert UIColor:params[@"backgroundColor"]];
  
  UINavigationController *nav = [NavCoordinator sharedInstance].currentVC.navigationController;
  
  UIViewController *newVC = [[UIViewController alloc] init];
  
  UIView *rootView = [[RCTSurfaceHostingView alloc] initWithBridge:[NavCoordinator sharedInstance].bridge moduleName:ID initialProperties:params sizeMeasureMode:RCTSurfaceSizeMeasureModeWidthAtMost | RCTSurfaceSizeMeasureModeHeightAtMost];
  rootView.translatesAutoresizingMaskIntoConstraints = NO;
  
  [newVC.view addSubview:rootView];
  
  if (@available(iOS 11.0, *)) {
    [rootView.topAnchor constraintEqualToAnchor:newVC.view.safeAreaLayoutGuide.topAnchor].active = YES;
    [rootView.bottomAnchor constraintEqualToAnchor:newVC.view.safeAreaLayoutGuide.bottomAnchor].active = YES;
    [rootView.leadingAnchor constraintEqualToAnchor:newVC.view.safeAreaLayoutGuide.leadingAnchor].active = YES;
    [rootView.trailingAnchor constraintEqualToAnchor:newVC.view.safeAreaLayoutGuide.trailingAnchor].active = YES;
  } else {
    [rootView.topAnchor constraintEqualToAnchor:newVC.topLayoutGuide.bottomAnchor].active = YES;
    [rootView.bottomAnchor constraintEqualToAnchor:newVC.bottomLayoutGuide.topAnchor].active = YES;
    [rootView.leadingAnchor constraintEqualToAnchor:newVC.view.layoutMarginsGuide.leadingAnchor].active = YES;
    [rootView.trailingAnchor constraintEqualToAnchor:newVC.view.layoutMarginsGuide.trailingAnchor].active = YES;
  }
  
  if ([title isKindOfClass:NSString.class] && title.length) {
    newVC.navigationItem.title = title;
  }
  if ([title isKindOfClass:UIColor.class]) {
    newVC.view.backgroundColor = backgroundColor;
  } else {
    newVC.view.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];
  }
  
  [nav pushViewController:newVC animated:YES];
}

@end
