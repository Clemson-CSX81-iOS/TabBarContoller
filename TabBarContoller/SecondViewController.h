//
//  SecondViewController.h
//  TabBarContoller
//
//  Created by DJ Edmonson on 6/20/12.
//  Copyright (c) 2012 Clemson University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AdditionalViewController.h"

@interface SecondViewController : UIViewController

@property (strong, nonatomic) NSMutableArray *avcs;


- (IBAction)addView:(id)sender;
- (IBAction)removeView:(id)sender;

@end
