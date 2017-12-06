//
//  LRTSBuyShowView.h
//  LRTSAlertView
//
//  Created by JackJin on 2017/12/5.
//

#import <UIKit/UIKit.h>
#import "LRTSAlertUtilsUtils.h"
#import "LRTSAlertViewContent.h"

@protocol LRTSAlertViewTochEventsDelegate <NSObject>

@required

@optional

- (void)receiveRedPacketOrListenTicketTouchEvent;

@end

@interface LRTSBuyShowView : UIView


@end
