//
//  BWMainViewController.m
//  BlackWhite
//
//  Created by Mobilike on 1.09.2014.
//  Copyright (c) 2014 mobilike. All rights reserved.
//

#import "BWMainViewController.h"

@interface BWMainViewController ()

@end

@implementation BWMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self.navigationController setNavigationBarHidden:YES];
    
    
    //****BLACK STARS
    [self.blackBall1 setBackgroundColor:[UIColor blackColor]];
    [self.blackBall2 setBackgroundColor:[UIColor blackColor]];
    
    self.blackBall1.layer.cornerRadius = 25;
    self.blackBall2.layer.cornerRadius = 25;
    
    
    
    //****RINGS
    [self.ringView1 setBackgroundColor:[UIColor whiteColor]];
    [self.ringView2 setBackgroundColor:[UIColor whiteColor]];
    
    self.ringView1.layer.cornerRadius = 25;
    self.ringView2.layer.cornerRadius = 25;
    
    self.ringView1.layer.borderColor = [UIColor blackColor].CGColor;
    self.ringView1.layer.borderWidth = 2.5;
    
    self.ringView2.layer.borderColor = [UIColor blackColor].CGColor;
    self.ringView2.layer.borderWidth = 2.5;
    
    
    //****Button
    [self.startButton setTitle:@"Start" forState:UIControlStateNormal];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)startAction:(id)sender
{
   
    [self startAnimation];
}


- (void)startAnimation
{
    [UIView animateWithDuration:12.5 animations:^{
        //Wait
    }completion:^(BOOL finished) {
     [UIView animateWithDuration:6.5 animations:^{
         [self.startButton setTitle:@"Loading" forState:UIControlStateNormal];
         CGRect frame   = self.ringView2.frame;
         self.blackBall1.frame = frame;
         
         frame   = self.ringView1.frame;
         self.blackBall2.frame = frame;
         
     }completion:^(BOOL finished) {
         [self startViewController];
     }];
    }];
}

- (void)startViewController
{
    BWStartViewController * startViewController = [[BWStartViewController alloc] init];
    [self.navigationController pushViewController:startViewController animated:NO];
}


@end
