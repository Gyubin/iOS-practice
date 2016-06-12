//
//  ViewController.m
//  PainterView
//
//  Created by 소영섭 on 2015. 11. 22..
//  Copyright © 2015년 소영섭. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


-(IBAction)PenClick         //  Pen Type
{
    [(MainPainterView *)self.view setCurType:PEN];
    
}
-(IBAction)LineClick       // Line Type
{
    [(MainPainterView *)self.view setCurType:LINE];
}

-(IBAction)CircleClick     // Circle Type
{
    [(MainPainterView *)self.view setCurType:CIRCLE];
    
}

-(IBAction)EraseClick     // Erase Type
{
    [(MainPainterView *)self.view setCurType:ERASE];
    
}

-(IBAction)RectangleClick     // Taegeuk Type
{
    [(MainPainterView *)self.view setCurType:RECTANGLE];
    
    
}


-(IBAction)SetupClick
{
    if (pPainterSetupViewController == nil) {
        
        PainterSetupViewController *viewController = [self.storyboard     instantiateViewControllerWithIdentifier:@"PainterSetupViewController"];
        
        viewController.delegate = self;
        pPainterSetupViewController = viewController;
    }
    [self presentViewController:pPainterSetupViewController animated:YES completion:nil];
    
}


// PainterSetupViewDelegate 델리게이트 구현함수(색상설정)
- (void)painterSetupViewController:(PainterSetupViewController *) controller setColor:(UIColor *)color
{
    [(MainPainterView *) self.view setCurColor:color];
}

// PainterSetupViewDelegate 델리게이트 구현함수(선의두께 설정)
- (void)painterSetupViewController:(PainterSetupViewController *) controller setWidth:(float)width
{
    [(MainPainterView *) self.view setCurWidth:width];
}

@end
