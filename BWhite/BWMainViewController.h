//
//  BWMainViewController.h
//  BlackWhite
//
//  Created by Mobilike on 1.09.2014.
//  Copyright (c) 2014 mobilike. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BWStartViewController.h"


@interface BWMainViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *ringView1;
@property (strong, nonatomic) IBOutlet UIView *ringView2;
@property (strong, nonatomic) IBOutlet UIView *blackBall1;
@property (strong, nonatomic) IBOutlet UIView *blackBall2;
@property (strong, nonatomic) IBOutlet UIButton *startButton;


- (IBAction)startAction:(id)sender;


@end
