//
//  FirstViewController.h
//  SampleIsKindOfClass
//
//  Created by  on 11/12/03.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseView.h"

@interface FirstViewController : UIViewController <BaseViewDelegate> {
    
}

@property (strong, nonatomic) BaseView *baseView;

@end
