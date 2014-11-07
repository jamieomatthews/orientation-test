//
//  SubViewController.m
//  orientation-test
//
//  Created by Jamie Matthews on 11/7/14.
//  Copyright (c) 2014 Ivedix. All rights reserved.
//

#import "SubViewController.h"

@interface SubViewController ()

@end

@implementation SubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.shouldSupportLandscapeRotation = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)presentViewPressed:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(BOOL)shouldAutorotate {
    return [super shouldAutorotate];
}

- (NSUInteger)supportedInterfaceOrientations {
    return [super supportedInterfaceOrientations];
    
}

@end
