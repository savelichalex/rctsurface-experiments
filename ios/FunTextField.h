#import <UIKit/UIKit.h>
#import <React/RCTBaseTextInputView.h>
#import <React/RCTUITextField.h>
#import <React/RCTBackedTextInputDelegate.h>

@interface FunTextField : RCTBaseTextInputView <RCTBackedTextInputDelegate> {
  UIToolbar *toolBar;
}

@end
