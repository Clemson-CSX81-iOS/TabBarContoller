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
@property (copy  , nonatomic) NSString *labelText;

-(void)updateInfo;
- (IBAction)stepperChanged:(UIStepper*)sender;

@end
