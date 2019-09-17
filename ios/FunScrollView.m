//
//  FunScrollView.m
//  TestNav
//
//  Created by Алексей Савельев on 17/09/2019.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "FunScrollView.h"

@implementation FunScrollView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithEventDispatcher:(RCTEventDispatcher *)eventDispatcher {
  if ((self = [super initWithEventDispatcher:eventDispatcher])) {
    self.scrollView.keyboardDismissMode = UIScrollViewKeyboardDismissModeInteractive;
  }
  return self;
}

@end
