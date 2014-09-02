//
//  BWElements.m
//  BlackWhite
//
//  Created by Mobilike on 1.09.2014.
//  Copyright (c) 2014 mobilike. All rights reserved.
//

#import "BWElements.h"

@implementation BWElements
static BWElements * _shareElements;

+ (BWElements *)elements
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _shareElements = [[self alloc] init];
    });
    return _shareElements;
}

- (void)blackView:(UIView*)black findRingView:(UIView*)ring
{
    CGRect frame = ring.frame;
    black.frame  = frame;
}


- (void)writeHistory:(int)history blackView:(UIView*)blackView ringView:(UIView*)ringView
{
    CGRect frame;
    
    if (history == 2)
    {
        frame = CGRectMake(135, 180, 50, 50);
        blackView.frame = frame;
        frame.origin.y  = 280;
        ringView.frame = frame;
        
        blackView.hidden = NO;
        ringView.hidden =NO;
        
    }
    
    if (history == 3)
    {
        frame = CGRectMake(50, 200, 50, 50);
        blackView.frame = frame;
        frame.origin.x = 220;
        ringView.frame = frame;
    
        
        blackView.hidden = NO;
        ringView.hidden =NO;
        
    }
    if (history == 4)
    {
        frame = CGRectMake(50, 200, 50, 50);
        blackView.frame = frame;
        frame.origin.x = 220;
        ringView.frame = frame;
        
        
        blackView.hidden = NO;
        ringView.hidden =NO;
    }
    
 
}

- (void)dialogWithBlackView :(UIView*)blackView ringView :(UIView*)ringView dialogLabel:(UILabel*)sayLabel endSay :(UILabel*)endLabel
{
    [UIView animateWithDuration:3.5 animations:^{
        sayLabel.text = @"Black says: Who are u?";
        
    }completion:^(BOOL finished) {
        sayLabel.layer.opacity = 0;
        [UIView animateWithDuration:3.5 animations:^{
            CGRect frame = blackView.frame;
            frame.origin.x = frame.origin.x - 30;
            blackView.frame = frame;
            sayLabel.text = @"White says: I'm Objective C";
            sayLabel.layer.opacity = 10;
        }completion:^(BOOL finished) {
            sayLabel.layer.opacity = 0;
            [UIView animateWithDuration:3.5 animations:^{
                CGRect frame = blackView.frame;
                frame.origin.x = frame.origin.x + 30;
                blackView.frame = frame;
                frame = ringView.frame;
                frame.origin.x = frame.origin.x- 20;
                ringView.frame = frame;
                
                sayLabel.text = @"Black : Oh, i want to learn Objective C";
                sayLabel.layer.opacity = 10;
            }completion:^(BOOL finished) {
                [UIView animateWithDuration:3.5 animations:^{
                    sayLabel.layer.opacity = 0;
                }completion:^(BOOL finished) {
                    [UIView animateWithDuration:3.5 animations:^{
                        CGRect frame = ringView.frame;
                        frame.origin.x = frame.origin.x+ 20;
                        ringView.frame = frame;
                        sayLabel.text = @"White : NSLog('Hello World')";
                        sayLabel.layer.opacity = 10;
                    }completion:^(BOOL finished) {
                        [UIView animateWithDuration:3.5 animations:^{
                            sayLabel.layer.opacity = 0;
                        }completion:^(BOOL finished) {
                            [UIView animateWithDuration:3.5 animations:^{
                                CGRect frame = blackView.frame;
                                frame.origin.x = frame.origin.x + 50;
                                blackView.frame = frame;
                            }completion:^(BOOL finished) {
                                [UIView animateWithDuration:3.5 animations:^{
                                    sayLabel.text = @"Black : NSString,NSInteger,UIView...";
                                    sayLabel.layer.opacity = 10;
                                    [self endAnimationWithblackView:blackView findRingView:ringView hit:50];
                                }completion:^(BOOL finished) {
                                    sayLabel.layer.opacity =0;
                                   [UIView animateWithDuration:4.5 animations:^{
                                       sayLabel.text = @"Black : Cocoapods,Afnetworking,SDWeb,Tesserac OCR,...";
                                       sayLabel.layer.opacity = 10;
                                       [self endAnimationWithblackView:blackView findRingView:ringView hit:-50];
                                   }completion:^(BOOL finished) {
                                       [UIView animateWithDuration:2.5 animations:^{
                                           sayLabel.layer.opacity = 0;
                                       }completion:^(BOOL finished) {
                                           [UIView animateWithDuration:3.5 animations:^{
                                               CGRect frame = blackView.frame;
                                               frame.origin.x = 65;
                                               
                                           }completion:^(BOOL finished) {
                                               [UIView animateWithDuration:3.5 animations:^{
                                                   sayLabel.text = @"Black : Objective C, i love u";
                                                   sayLabel.layer.opacity = 10;
                                                   
                                               }completion:^(BOOL finished) {
                                                   sayLabel.layer.opacity = 0;
                                                   [UIView animateWithDuration:3.5 animations:^{
                                                       sayLabel.text = @"White : me too.";
                                                       sayLabel.layer.opacity = 10;
                                                   }completion:^(BOOL finished) {
                                                       [UIView animateWithDuration:3.5 animations:^{
                                                           [self blackView:blackView findRingView:ringView];
                                                           sayLabel.text = @"i hate Swift XD";
                                                           
                                                       }completion:^(BOOL finished) {
                                                           sayLabel.layer.opacity = 0;
                                                           [UIView animateWithDuration:2.5 animations:^{
                                                               sayLabel.text = @"omer kantar";
                                                               sayLabel.layer.opacity = 10;
                                                               endLabel.text = @"The End";
                                                           }];
                                                       }];
                                                   }];
                                               }];
                                           }];
                                       }];
                                       
                                   }];
                                }];
                                
                            }];
                            
                        }];
                    }];
                }];
            }];
        }];
    }];
    
 
}

- (void)endAnimationWithblackView:(UIView*)black findRingView:(UIView*)ring hit:(int)hit
{
    CGRect frame = ring.frame;
    frame.origin.x = frame.origin.x + hit;
    black.frame  = frame;
}


@end
























