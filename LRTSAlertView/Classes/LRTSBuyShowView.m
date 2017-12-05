//
//  LRTSBuyShowView.m
//  LRTSAlertView
//
//  Created by JackJin on 2017/12/5.
//

#import "LRTSBuyShowView.h"

@interface LRTSBuyShowView ()

@property (nonatomic, strong) UIButton *deleteBSV;

@end


@implementation LRTSBuyShowView

#pragma mark - Life Cycle

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        CGFloat x_Center = X_POSITION_LRTS(WIDTH_BSV_LRTS);
        CGFloat y_Center = Y_POSITION_LRTS(0);
        self.deleteBSV.center = CGPointMake(x_Center, y_Center);
        [self addSubview:self.deleteBSV];
    }
    return self;
}

#pragma mark - Getter & Setter

- (UIButton *)deleteBSV {
    if (!_deleteBSV) {
        CGFloat width_deleteBT = WIDTH_LRTS(WIDTH_DELETE_BUTTON);
        CGFloat height_deleteBt = HEIGHT_LRTS(HEIGHT_DELETE_BUTTON);
        _deleteBSV = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, width_deleteBT, height_deleteBt)];
        _deleteBSV.backgroundColor = [UIColor redColor];
    }
    return _deleteBSV;
}

#pragma mark - Event

#pragma mark - Delegate

#pragma mark - Public Method

#pragma mark - Private Method

- (void)clickDeleteBuyAlertViewButton:(UIButton *)sender {
    if ([self.delegate respondsToSelector:@selector(closeAlterViewTouchEvent)]) {
        [self.delegate closeAlterViewTouchEvent];
    }
}

@end
