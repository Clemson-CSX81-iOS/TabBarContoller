//
//  SecondViewController.m
//  TabBarContoller
//
//  Created by DJ Edmonson on 6/20/12.
//  Copyright (c) 2012 Clemson University. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController

@synthesize avcs = _avcs;

/** This method adds another view to the TabBarController.
    First we make sure our internal array is created, then 
    create the new VC from the storyboard. Next we set the 
    main label to the correct value and add the new ViewController
    to the TabBarController and allow moving the tabs.
 */
- (IBAction)addView:(id)sender {
    //Nil has a boolean value of false so this is an easy way to 
    // see if an object is nil or not.
    if (!self.avcs) {
        self.avcs = [NSMutableArray arrayWithCapacity:5];
    }
    
    AdditionalViewController *newVC = [[self storyboard] instantiateViewControllerWithIdentifier:@"avc"];
    NSString *s = [NSString stringWithFormat:@"Additional View: %d",[self.avcs count]+1];
    
    [newVC setLabelText:s];
    [self.avcs addObject:newVC];
    
    NSArray *a = [[[self tabBarController] viewControllers] arrayByAddingObject:newVC];
    [[self tabBarController] setViewControllers:a animated:YES];
    [[self tabBarController] setCustomizableViewControllers:a];
    
    [newVC updateInfo];
}

/** This method removes the last ViewContoller from the TabBarController.
    This is done by getting the last object from the internal array then
    removing it from both arrays.
 */
- (IBAction)removeView:(id)sender {
    AdditionalViewController *lvc = [self.avcs lastObject];
    [self.avcs removeObject:lvc];
    
    NSMutableArray *a = [[[self tabBarController] viewControllers] mutableCopy];
    [a removeObject:lvc];
    
    [[self tabBarController] setViewControllers:a animated:YES];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
@end
