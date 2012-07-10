//
//  AdditionalViewController.m
//  TabBarContoller
//
//  Created by DJ Edmonson on 6/20/12.
//  Copyright (c) 2012 Clemson University. All rights reserved.
//

#import "AdditionalViewController.h"

@implementation AdditionalViewController

@synthesize mainLabel = _mainLabel;
@synthesize labelText = _labelText;

/** Helper method to update the UI.
 */
- (void)updateInfo{
    NSString *s = [[self.labelText componentsSeparatedByString:@":"] objectAtIndex:1];
    [[self tabBarItem] setTitle:[NSString stringWithFormat:@"%d",[s intValue]]];
}

/** This method updates the TabItem badge Value.
 */
- (IBAction)stepperChanged:(UIStepper*)sender {
    int d = [sender value];
    [[self tabBarItem] setBadgeValue:[NSString stringWithFormat:@"%d",d]];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [self.mainLabel setText:self.labelText];
}

- (void)viewDidUnload
{
    [self setMainLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

@end
