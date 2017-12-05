//
//  LRTSColorUtils.h
//  Pods
//
//  Created by JackJin on 2017/12/5.
//

#ifndef LRTSColorUtils_h
#define LRTSColorUtils_h


#endif /* LRTSColorUtils_h */

#pragma mark - Screen

#define WIDTH_IPHONE_7_LRTS 375
#define HEIGHT_IPHONE_7_LRTS 667
#define WIDTH_SCREEN_LRTS ([UIScreen mainScreen].bounds.size.width)
#define HEIGHT_SCREEN_LRTS ([UIScreen mainScreen].bounds.size.height)


#pragma mark - Masurement Transform

#pragma mark -Position

#define X_POSITION_LRTS(x) ((WIDTH_SCREEN_LRTS) * (x) / (WIDTH_IPHONE_7_LRTS))
#define Y_POSITION_LRTS(y) ((HEIGHT_SCREEN_LRTS) * (y) / (HEIGHT_IPHONE_7_LRTS))

#pragma mark -Side Length

#define WIDTH_LRTS(width) ((WIDTH_SCREEN_LRTS) * (width) / (WIDTH_IPHONE_7_LRTS))
#define HEIGHT_LRTS(height) ((HEIGHT_SCREEN_LRTS) * (height) / (HEIGHT_IPHONE_7_LRTS))


#pragma mark - Color

#define LRTSCOLORUTILS(RED, GREEN, BLUE, ALPHA) [UIColor colorWithRed:(RED/255.0f) green:(GREEN/255.0f) blue:(BLUE/255.0f) alpha:(ALPHA/1.0f)]








