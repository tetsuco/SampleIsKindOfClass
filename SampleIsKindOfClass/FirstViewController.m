//
//  FirstViewController.m
//  SampleIsKindOfClass
//
//  Created by  on 11/12/03.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "FirstViewController.h"

@implementation FirstViewController

@synthesize baseView = _baseView;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    /* BenuViewを設定 */
    
    self.baseView = [[BaseView alloc] initWithFrame:CGRectMake(0.0, 0.0, self.view.frame.size.width, self.view.frame.size.height)];    
    self.baseView.delegate = self;
    [self.view addSubview:self.baseView];
    
    
    // 各ボタンのデフォルト処理
    for (id view in self.baseView.subviews) {
        if ([view isKindOfClass:[UIButton class]])
        {
            UIButton *btn = (UIButton*)view;
            
            // ボタン1
            if (btn.tag == 1)
            {
                //
            }
            // ボタン2
            else if (btn.tag == 2)
            {
                btn.highlighted = YES;   // ボタンをハイライト状態にする
                btn.enabled = NO;   // ハイライト状態のままボタンを無効化する
            }
            // ボタン3
            else if (btn.tag == 3)
            {
                btn.enabled = NO;   // ボタン無効化
            }
            // ボタン4
            else if (btn.tag == 4)
            {
                //
            }
            // ボタン5
            else if (btn.tag == 5)
            {
                btn.enabled = NO;   // ボタン無効化
            }
        }
    }
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


/* ============================================================================== */
#pragma mark - Delegate Method
/* ============================================================================== */
// ボタン1
- (void)btn1Delegate:(UIButton*)sender
{
    NSLog(@"ボタン1です。");
}

// ボタン2
- (void)btn2Delegate:(UIButton*)sender
{
    NSLog(@"ボタン2です。");
}

// ボタン3
- (void)btn3Delegate:(UIButton*)sender
{
    NSLog(@"ボタン3です。");
}

// ボタン4
- (void)btn4Delegate:(UIButton*)sender
{
    NSLog(@"ボタン4です。");
}

// ボタン5
- (void)btn5Delegate:(UIButton*)sender
{
    NSLog(@"ボタン5です。");
}


@end
