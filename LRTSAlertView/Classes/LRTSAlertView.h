//
//  LRTSAlertView.h
//  LRTSAlertView
//
//  Created by JackJin on 2017/12/5.
//

#import <UIKit/UIKit.h>
#import "LRTSBuyShowView.h"

@interface LRTSAlertView : UIView

@property (nonatomic, strong) LRTSBuyShowView *bsView;

- (instancetype)init;

- (instancetype)initWithFrame:(CGRect)frame;

- (void)show;

@end
