//
//  BaseView.m
//  SampleIsKindOfClass
//
//  Created by  on 11/12/03.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "BaseView.h"

@implementation BaseView

@synthesize delegate = _delegate;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
        
        // ボタン1
        UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn1.frame = CGRectMake(0.0, 0.0, 180.0, 30.0);
        btn1.center = CGPointMake(self.frame.size.width / 2, 100.0);
        btn1.tag   = 1;
        [btn1 setTitle:@"有効状態です。" forState:UIControlStateNormal];  // 有効時
        [btn1 setTitle:@"ハイライト状態です。" forState:UIControlStateHighlighted];  // ハイライト時
        [btn1 setTitle:@"無効状態です。" forState:UIControlStateDisabled];  // 無効時
        [btn1 addTarget:self action:@selector(btnAction:)forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn1];
        
        // ボタン2
        UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn2.frame = CGRectMake(btn1.frame.origin.x, btn1.frame.origin.y + btn1.frame.size.height + 30, btn1.frame.size.width, btn1.frame.size.height);
        btn2.tag   = 2;
        [btn2 setTitle:@"有効状態です。" forState:UIControlStateNormal];  // 有効時
        [btn2 setTitle:@"ハイライト状態です。" forState:UIControlStateHighlighted];  // ハイライト時
        [btn2 setTitle:@"無効状態です。" forState:UIControlStateDisabled];  // 無効時
        [btn2 addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn2];
        
        // ボタン3
        UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn3.frame = CGRectMake(btn2.frame.origin.x, btn2.frame.origin.y + btn2.frame.size.height + 30, btn2.frame.size.width, btn2.frame.size.height);
        btn3.tag   = 3;
        [btn3 setTitle:@"有効状態です。" forState:UIControlStateNormal];  // 有効時
        [btn3 setTitle:@"ハイライト状態です。" forState:UIControlStateHighlighted];  // ハイライト時
        [btn3 setTitle:@"無効状態です。" forState:UIControlStateDisabled];  // 無効時
        [btn3 addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn3];
        
        // ボタン4
        UIButton *btn4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn4.frame = CGRectMake(btn3.frame.origin.x, btn3.frame.origin.y + btn3.frame.size.height + 30, btn3.frame.size.width, btn3.frame.size.height);
        btn4.tag   = 4;
        [btn4 setTitle:@"有効状態です。" forState:UIControlStateNormal];  // 有効時
        [btn4 setTitle:@"ハイライト状態です。" forState:UIControlStateHighlighted];  // ハイライト時
        [btn4 setTitle:@"無効状態です。" forState:UIControlStateDisabled];  // 無効時
        [btn4 addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn4];
        
        // ボタン5
        UIButton *btn5 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn5.frame = CGRectMake(btn4.frame.origin.x, btn4.frame.origin.y + btn4.frame.size.height + 30, btn4.frame.size.width, btn4.frame.size.height);
        btn5.tag   = 5;
        [btn5 setTitle:@"有効状態です。" forState:UIControlStateNormal];  // 有効時
        [btn5 setTitle:@"ハイライト状態です。" forState:UIControlStateHighlighted];  // ハイライト時
        [btn5 setTitle:@"無効状態です。" forState:UIControlStateDisabled];  // 無効時
        [btn5 addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn5];
    }
    
    return self;
}


/* ============================================================================== */
#pragma mark - Button Action
/* ============================================================================== */
- (void)btnAction:(UIButton*)sender
{
    if (sender.tag == 1)
    {
        if ([self.delegate respondsToSelector:@selector(btn1Delegate:)])
        {
            [self.delegate btn1Delegate:sender];
        }
    }
    else if (sender.tag == 2)
    {
        if ([self.delegate respondsToSelector:@selector(btn2Delegate:)])
        {
            [self.delegate btn2Delegate:sender];
        }
    }
    else if (sender.tag == 3)
    {
        if ([self.delegate respondsToSelector:@selector(btn3Delegate:)])
        {
            [self.delegate btn3Delegate:sender];
        }
    }
    else if (sender.tag == 4)
    {
        if ([self.delegate respondsToSelector:@selector(btn4Delegate:)])
        {
            [self.delegate btn4Delegate:sender];
        }
    }
    else if (sender.tag == 5)
    {
        if ([self.delegate respondsToSelector:@selector(btn5Delegate:)])
        {
            [self.delegate btn5Delegate:sender];
        }
    }
    
}

@end
