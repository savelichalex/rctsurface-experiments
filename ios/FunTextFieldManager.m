#import "FunTextFieldManager.h"

@implementation FunTextFieldManager

RCT_EXPORT_MODULE();

RCT_EXPORT_VIEW_PROPERTY(onValueChange, RCTBubblingEventBlock);
RCT_EXPORT_VIEW_PROPERTY(items, NSArray<NSDictionary *>);
RCT_EXPORT_VIEW_PROPERTY(itemIndex, NSInteger);
RCT_EXPORT_VIEW_PROPERTY(doneLabel, NSString);
RCT_EXPORT_VIEW_PROPERTY(cancelLabel, NSString);

- (RCTShadowView *)shadowView
{
  RCTBaseTextInputShadowView *shadowView =
  (RCTBaseTextInputShadowView *)[super shadowView];
  
  shadowView.maximumNumberOfLines = 1;
  
  return shadowView;
}

- (UIView*)view {
    return [[FunTextField alloc] initWithBridge:self.bridge];
}

@end
