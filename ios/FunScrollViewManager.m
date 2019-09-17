//
//  FunScrollViewManager.m
//  TestNav
//
//  Created by Алексей Савельев on 17/09/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "FunScrollViewManager.h"
#import "FunScrollView.h"

@implementation FunScrollViewManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
  return [[FunScrollView alloc] initWithEventDispatcher:self.bridge.eventDispatcher];
}

@end
