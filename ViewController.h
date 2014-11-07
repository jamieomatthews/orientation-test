//
//  ViewController.h
//  orientation-test
//
//  Created by Jamie Matthews on 11/7/14.
//  Copyright (c) 2014 Ivedix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *textLabel;
@property (nonatomic) BOOL shouldSupportLandscapeRotation;
- (IBAction)presentViewPressed:(UIButton *)sender;
@end
