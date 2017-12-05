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

- (void)closeAlterViewTouchEvent;

@end

@interface LRTSBuyShowView : UIView

@property (nonatomic, weak) id<LRTSAlertViewTochEventsDelegate> delegate;

@end
