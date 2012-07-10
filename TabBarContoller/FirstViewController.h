//
//  FirstViewController.h
//  TabBarContoller
//
//  Created by DJ Edmonson on 6/20/12.
//  Copyright (c) 2012 Clemson University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController

@property (assign, nonatomic) BOOL isRandom;

- (IBAction)swap:(id)sender;
- (IBAction)reset:(id)sender;
@end
