//
//  BWStartViewController.h
//  BlackWhite
//
//  Created by Mobilike on 1.09.2014.
//  Copyright (c) 2014 mobilike. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BWElements.h"

@interface BWStartViewController : UIViewController
{
    int history;
    BWElements * elements;
    int clickSelector;
}

@property (strong, nonatomic) IBOutlet UILabel *labelLevel;
@property (strong, nonatomic) IBOutlet UIView *blackView;
@property (strong, nonatomic) IBOutlet UIView *ringView;
@property (strong, nonatomic) IBOutlet UILabel *sayLabel;


@end
