//
//  PainterSetupViewController.m
//  PainterView
//
//  Created by 소영섭 on 2015. 11. 22..
//  Copyright © 2015년 소영섭. All rights reserved.
//

#import "PainterSetupViewController.h"


@implementation PainterSetupViewController


@synthesize delegate;


-(IBAction)ValueChange:(id)sender
{
    UIColor * tColor = [[UIColor alloc] initWithRed:[self.redBar value]
                                              green:[self.greenBar value]
                                               blue:[self.blueBar value]
                                              alpha:1];
    
    [self.colorPreView setBackgroundColor:tColor];
    
}


-(IBAction)PushBackClick
{
    
    UIColor * tColor = [[UIColor alloc] initWithRed:[self.redBar value]
                                              green:[self.greenBar value]
                                               blue:[self.blueBar value]
                                              alpha:1];
    
    [delegate painterSetupViewController:self setColor:tColor];
    [delegate painterSetupViewController:self setWidth:[self.widthBar value]];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}



@end
