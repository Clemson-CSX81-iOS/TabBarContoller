//
//  FirstViewController.m
//  TabBarContoller
//
//  Created by DJ Edmonson on 6/20/12.
//  Copyright (c) 2012 Clemson University. All rights reserved.
//

#import "FirstViewController.h"
#import <stdlib.h>

//This is a private interface were we can declare methods and properties that
// are private.
@interface FirstViewController ()

//These properties are type 'id' to allow any objective-c object to be stored
// in them b/c objective-c is dynamically typed at runtime.
@property (nonatomic, strong) id fst;
@property (nonatomic, strong) id sec;

@end

@implementation FirstViewController

@synthesize isRandom = _isRandom;
@synthesize fst = _fst;
@synthesize sec = _sec;


/** This method randomly re-orders the TabBarController's ViewControllers.
    This is done my first storing the first 2 ViewControllers so that we can bring them back
    to the front when we want. Then we get a mutable array of the ViewControllers and pick a
    random one to add to the new array untill all are moved.
 */
- (IBAction)swap:(id)sender {
    if (self.isRandom == NO) {
        self.fst = [[[self tabBarController] viewControllers] objectAtIndex:0];
        self.sec = [[[self tabBarController] viewControllers] objectAtIndex:1];
        self.isRandom = YES;
    }
    NSMutableArray *a = [[[self tabBarController] viewControllers] mutableCopy];
    NSMutableArray *a2 = [NSMutableArray arrayWithCapacity:[a count]];

    int r = 0;
    while ([a count] > 0) {
        r = arc4random()%[a count];
        [a2 addObject:[a objectAtIndex:r]];
        [a removeObjectAtIndex:r];
    }
    
    [[self tabBarController] setViewControllers:a2 animated:YES];
}

/** This method returns the fist two ViewControllers to the first two tab spots.
 */
- (IBAction)reset:(id)sender {
    NSMutableArray *a = [[[self tabBarController] viewControllers] mutableCopy];
    [a removeObject:self.fst];
    [a removeObject:self.sec];
    [a insertObject:self.sec atIndex:0];
    [a insertObject:self.fst atIndex:0];
    [[self tabBarController] setViewControllers:a animated:YES];
    self.isRandom = NO;
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    self.fst = [[[self tabBarController] viewControllers] objectAtIndex:0];
    self.sec = [[[self tabBarController] viewControllers] objectAtIndex:1];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{   
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
@end
