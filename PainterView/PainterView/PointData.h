//
//  PointData.h
//  PainterView
//
//  Created by 소영섭 on 2015. 11. 22..
//  Copyright © 2015년 소영섭. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>    // 반드시 추가하기

typedef enum {
    PEN = 0,
    LINE = 1,
    CIRCLE = 2,
    RECTANGLE = 3,
    ERASE = 4
} TYPES;

@interface PointData : NSObject

@property (readonly, nonatomic) NSMutableArray *points;
@property (strong, nonatomic) UIColor* pColor;   // 현재 색상
@property float pWidth;                          // 현재 선의 두께
@property TYPES pType;                           // 현재 드로잉 타입(PEN, LINE, CIRCLE, RECTANGLE, ERASE)

- (void)addPoint:(CGPoint)point;

@end
