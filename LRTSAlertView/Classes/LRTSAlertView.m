//
//  LRTSAlertView.m
//  LRTSAlertView
//
//  Created by JackJin on 2017/12/5.
//

#import "LRTSAlertView.h"

@interface LRTSAlertView ()<LRTSAlertViewTochEventsDelegate>

@property (nonatomic, strong) UIControl *overlayView;
@property (nonatomic, strong) UIView *contentView;

@end

@implementation LRTSAlertView

#pragma mark - Life Cycle

#pragma mark - Getter & Setter

- (UIControl *)overlayView {
    if (!_overlayView) {
        _overlayView = [[UIControl alloc] init];
    }
    _overlayView.frame = [UIScreen mainScreen].bounds;
    return _overlayView;
}

- (UIView *)contentView {
    if (!_contentView) {
        _contentView = [[UIView alloc] init];
    }
    _contentView.frame = self.overlayView.frame;
    _contentView.backgroundColor = [UIColor clearColor];
    return _contentView;
}

- (LRTSBuyShowView *)bsView {
    if (!_bsView) {
        CGFloat x_Position = X_POSITION_LRTS(X_POSITION_BSV_LRTS);
        CGFloat y_Position = Y_POSITION_LRTS(Y_POSITION_BSV_LRTS);
        CGFloat width = WIDTH_LRTS(WIDTH_BSV_LRTS);
        CGFloat height = WIDTH_LRTS(HEIGHT_BSV_LRTS);
        _bsView = [[LRTSBuyShowView alloc] initWithFrame:CGRectMake(x_Position, y_Position, width, height)];
    }
    return _bsView;
}


#pragma mark - Event

#pragma mark - Delegate

- (void)closeAlterViewTouchEvent {
    [self.contentView removeFromSuperview];
    [self.overlayView removeFromSuperview];
    
    self.contentView = nil;
    self.overlayView = nil;
    
    [[[[UIApplication sharedApplication] delegate] window] setWindowLevel:0];
    [[[[UIApplication sharedApplication] delegate] window] setWindowLevel:UIWindowLevelNormal];
}

#pragma mark - Public Method

- (instancetype)init {
    self = [super init];
    if (self) {
        [self configurationParamters];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self configurationParamters];
    }
    return self;
}

- (void)show {
    [self updateViewHierarchy];
}


#pragma mark - Private Method

- (void)configurationParamters {
    self.backgroundColor = LRTSCOLORUTILS(0, 0, 0, 0.42);
    
    [self.overlayView addSubview:self];
    [self.overlayView addSubview:self.contentView];
    [self.contentView addSubview:self.bsView];
}

- (void)updateViewHierarchy {
    if (!self.overlayView.superview) {
#if !defined(SV_APP_EXTENSIONS)
        NSEnumerator *frontBackWindows = [UIApplication.sharedApplication.windows reverseObjectEnumerator];
        for (UIWindow *window in frontBackWindows) {
            BOOL windowOnMainScreen = window.screen == UIScreen.mainScreen;
            BOOL windowIsVisible = !window.hidden && window.alpha > 0;
            BOOL windowLevelSupported = (window.windowLevel >= UIWindowLevelNormal && window.windowLevel <= UIWindowLevelAlert);
            
            if (windowOnMainScreen && windowIsVisible && windowLevelSupported) {
                [window addSubview:self.overlayView];
                break;
            }
        }
#else
        if (self.viewForExtension) {
            [self.viewForExtension addSubview:self.overlayView];
        }
#endif
    }else{
        [self.overlayView.superview bringSubviewToFront:self.overlayView];
    }
    if (!self.superview) {
        [self.overlayView addSubview:self];
    }
    if (!self.contentView.superview) {
        [self.overlayView addSubview:self.contentView];
    }
}

@end
