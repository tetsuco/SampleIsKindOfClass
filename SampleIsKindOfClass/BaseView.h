//
//  BaseView.h
//  SampleIsKindOfClass
//
//  Created by  on 11/12/03.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


/* Delegate */

@protocol BaseViewDelegate <NSObject>

@optional

- (void)btn1Delegate:(id)sender;
- (void)btn2Delegate:(id)sender;
- (void)btn3Delegate:(id)sender;
- (void)btn4Delegate:(id)sender;
- (void)btn5Delegate:(id)sender;

@end


/* UIView */

@interface BaseView : UIView

@property (unsafe_unretained, nonatomic) id <BaseViewDelegate> delegate;

- (void)btnAction:(UIButton*)sender;

@end

