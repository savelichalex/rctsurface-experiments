//
//  NavCoordinator.h
//  TestNav
//
//  Created by Алексей Савельев on 01/08/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <React/RCTBridgeModule.h>

NS_ASSUME_NONNULL_BEGIN

@interface NavCoordinator : NSObject <RCTBridgeModule>

+ (NavCoordinator *)sharedInstance;

@property (nonatomic) UIViewController *currentVC;
@property (nonatomic) RCTBridge *bridge;

@end

NS_ASSUME_NONNULL_END
