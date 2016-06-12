//
//  PointData.m
//  PainterView
//
//  Created by 소영섭 on 2015. 11. 22..
//  Copyright © 2015년 소영섭. All rights reserved.
//

#import "PointData.h"

@implementation PointData

@synthesize points;

- (id)init
{
    if (self = [super init])
    {
        points = [[NSMutableArray alloc] init]; // 객체생성 
    }
    
    return self;
}



- (void)addPoint:(CGPoint)point
{
    
    [points addObject:[NSValue valueWithCGPoint:point]];
}


@end
