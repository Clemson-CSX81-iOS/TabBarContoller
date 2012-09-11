//
//  AdditionalViewController.h
//  TabBarContoller
//
//  Created by DJ Edmonson on 6/20/12.
//  Copyright (c) 2012 Clemson University. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AdditionalViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *mainLabel;
@property (copy  , nonatomic) NSString *labelText; //String are usualy copied so that the string you recive
                                                   // is never changed without the setter being called.

-(void)updateInfo;
- (IBAction)stepperChanged:(UIStepper*)sender;

@end
