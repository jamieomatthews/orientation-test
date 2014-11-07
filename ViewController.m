//
//  ViewController.m
//  orientation-test
//
//  Created by Jamie Matthews on 11/7/14.
//  Copyright (c) 2014 Ivedix. All rights reserved.
//

#import "ViewController.h"
#import "SubViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *presentVIewButton;

@end

@implementation ViewController

- (instancetype)init{
    self = [super initWithNibName:@"ViewController" bundle:nil];
    if(self){
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.shouldSupportLandscapeRotation = YES;
    [self.textLabel setTitle:@"Present View" forState:UIControlStateNormal];
    
}
- (IBAction)presentViewPressed:(UIButton *)sender {
    SubViewController *vc = [[SubViewController alloc] init];
    //UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void) viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    [coordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext> context){
        // pre-rotate
        UIInterfaceOrientation orientation = [[UIApplication sharedApplication] statusBarOrientation];
        
    }
                                 completion:^(id<UIViewControllerTransitionCoordinatorContext> context) {
                                     
                                 }];
    [super viewWillTransitionToSize: size withTransitionCoordinator: coordinator];
}

-(BOOL)shouldAutorotate {
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations {
    if ([self shouldSupportLandscapeRotation]) {
        return UIInterfaceOrientationMaskAll;
    }
    else {
        return UIInterfaceOrientationMaskPortrait;
    }
    
}

@end
