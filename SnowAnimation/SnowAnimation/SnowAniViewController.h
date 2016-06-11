//
//  SnowAniViewController.h
//  SnowAnimation
//
//  Created by SonGyubin on 2016. 6. 6..
//  Copyright © 2016년 SonGyubin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SnowAniViewController : UIViewController
{
    UIImageView *SnowImageView;
    UIImage *snowImage;
}

-(void) StartBackgroundAnimation:(float)Duration;
-(void) StartSnowAnimation:(float) Duration;
-(void) animationTimerHandler:(NSTimer*)theTimer;

@end
