//
//  BWElements.h
//  BlackWhite
//
//  Created by Mobilike on 1.09.2014.
//  Copyright (c) 2014 mobilike. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BWElements : NSObject


@property (nonatomic) UIView * ringView;
@property (nonatomic) UIView * blackView;
@property (nonatomic) NSString * end;

+ (BWElements *)elements;
- (void)blackView:(UIView*)black findRingView:(UIView*)ring;
- (void)writeHistory:(int)history blackView:(UIView*)blackView ringView:(UIView*)ringView;
- (void)dialogWithBlackView :(UIView*)blackView ringView :(UIView*)ringView dialogLabel:(UILabel*)sayLabel endSay :(UILabel*)endLabel;

@end
