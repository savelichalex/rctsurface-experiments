#import "FunTextField.h"
#import <React/RCTUtils.h>
#import <React/RCTConvert.h>
#import <React/RCTEventDispatcher.h>
#import <React/UIView+React.h>
#import <React/RCTSurfaceHostingView.h>
#import <React/RCTSurfaceSizeMeasureMode.h>

@implementation FunTextField {
  RCTUITextField *_backedTextInputView;
  
  RCTEventDispatcher *_eventDispatcher;
  NSInteger _nativeEventCount;
}

- (void)initHelper:(RCTBridge *)bridge {
  _backedTextInputView = [[RCTUITextField alloc] initWithFrame:self.bounds];
  _backedTextInputView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
  _backedTextInputView.textInputDelegate = self;
  //_backedTextInputView.caretHidden = YES;
  
  toolBar = [[UIToolbar alloc] init];
  toolBar.barStyle = UIBarStyleDefault;
 
  UIView *rootView = [[RCTSurfaceHostingView alloc] initWithBridge:bridge moduleName:@"App3" initialProperties:@{} sizeMeasureMode:RCTSurfaceSizeMeasureModeWidthAtMost | RCTSurfaceSizeMeasureModeHeightAtMost];
  rootView.translatesAutoresizingMaskIntoConstraints = NO;
  
  CGRect screenRect = [[UIScreen mainScreen] bounds];
  rootView.frame = CGRectMake(0, 0, screenRect.size.width, 50);
  
  UIBarButtonItem *rootViewWrapper = [[UIBarButtonItem alloc] initWithCustomView:rootView];
  
  [toolBar setItems:@[rootViewWrapper]];
  [toolBar sizeToFit];
  
  _backedTextInputView.inputAccessoryView = rootView;
  
  [self addSubview:_backedTextInputView];
}
- (id)initWithBridge:(RCTBridge *)bridge {
    if ((self = [super initWithBridge:bridge])) {
      [self initHelper:bridge];
    }
    return self;
}

- (id<RCTBackedTextInputViewProtocol>)backedTextInputView {
  return _backedTextInputView;
}

@end
