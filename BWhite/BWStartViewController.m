//
//  BWStartViewController.m
//  BlackWhite
//
//  Created by Mobilike on 1.09.2014.
//  Copyright (c) 2014 mobilike. All rights reserved.
//

#import "BWStartViewController.h"

@interface BWStartViewController ()

@end

@implementation BWStartViewController

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
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    elements = [BWElements elements];
    clickSelector = 0;
    history = 1;
    self.labelLevel.text = @"This is a small black's history.";
    
    //**** BLACK ****//
    [self.blackView setBackgroundColor:[UIColor blackColor]];
    self.blackView.layer.cornerRadius = 25;
    
    
    //**** RING ****//
    [self.ringView setBackgroundColor:[UIColor whiteColor]];
    self.ringView.layer.cornerRadius = 25;
    self.ringView.layer.borderColor = [UIColor blackColor].CGColor;
    self.ringView.layer.borderWidth = 2.5;
    
    self.sayLabel.text = @" ";
    
    //**** BUTTON ****//
    UIButton * ballButton = [UIButton buttonWithType:UIButtonTypeCustom];
    ballButton.frame      = CGRectMake(0, 0, 50, 50);
    ballButton.backgroundColor = [UIColor clearColor];
    [ballButton addTarget:self action:@selector(clickBlackView:) forControlEvents:UIControlEventTouchUpInside];
    [self.blackView addSubview:ballButton];
    
    
    
 
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickBlackView:(id)sender
{
    if (clickSelector == 0 || clickSelector == 1)
    {
        [UIView animateWithDuration:0.5 animations:^{
            CGRect frame = self.blackView.frame;
            frame.origin.x = frame.origin.x+60;
            self.blackView.frame = frame;
        }completion:^(BOOL finished) {
            
            [UIView animateWithDuration:0.5 animations:^{
                self.sayLabel.text = @"Black is shy :)";
                CGRect frame = self.blackView.frame;
                frame.origin.x = frame.origin.x-70;
                self.blackView.frame = frame;
            }completion:^(BOOL finished) {
                [UIView animateWithDuration:0.5 animations:^{
                    CGRect frame = self.blackView.frame;
                    frame.origin.x = frame.origin.x+10;
                    self.blackView.frame = frame;
                }completion:^(BOOL finished) {
                    self.sayLabel.text = @" ";
                }];
            }];
        }];
        
        clickSelector++;
    }else if(history == 1 ||history == 2 || history == 3)
    {
        [self animationWithBlackView:self.blackView ringView:self.ringView];
    }else if (history == 4)
    {
        [self animationWithBlackView:self.blackView ringView:self.ringView sayLabel:self.sayLabel];
    }
}

- (void)animationWithBlackView :(UIView *)blackView ringView:(UIView *)ring
{
    
    [UIView animateWithDuration:3.5 animations:^{
        [elements blackView:blackView findRingView:ring];
    }completion:^(BOOL finished) {
        
        blackView.hidden = YES;
        ring.hidden  = YES;
        history++;
        [elements writeHistory:history blackView:blackView ringView:ring];
        
    }];
}


- (void)animationWithBlackView :(UIView*)blackView ringView:(UIView*)ring sayLabel:(UILabel*)sayThings
{

    [UIView animateWithDuration:3.5 animations:^{
        sayThings.text = @"Black is learning objective c";
    }completion:^(BOOL finished) {
        [UIView animateWithDuration:2.5 animations:^{
            sayThings.layer.opacity = 0;
        }completion:^(BOOL finished) {
            sayThings.layer.opacity = 10;
            [UIView animateWithDuration:3.5 animations:^{
                sayThings.layer.opacity = 0;
            }completion:^(BOOL finished) {
                
                [elements dialogWithBlackView:blackView ringView:ring dialogLabel:sayThings endSay:self.labelLevel];
                
            }];
        }];
    }];
}














@end
