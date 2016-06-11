#import "SnowAniViewController.h"

@implementation SnowAniViewController

-(void) viewDidLoad {
    [super viewDidLoad];
    [self StartBackgroundAnimation:5];
    [self StartSnowAnimation: 0.25];
}

-(void) StartBackgroundAnimation:(float)Duration {
    if (SnowImageView == nil) {
        SnowImageView = [[UIImageView alloc] initWithFrame:self.view.frame];
        NSMutableArray *imageArray = [NSMutableArray array];
        for (int i = 1; i <= 46; i++) {
            [imageArray addObject:[UIImage imageNamed:[NSString stringWithFormat:@"snow-%d.tiff", i]]];
        }
        SnowImageView.animationImages = imageArray;
    } else {
        [SnowImageView removeFromSuperview];
    }
    SnowImageView.animationDuration = Duration;
    SnowImageView.animationRepeatCount = 0;
    [SnowImageView startAnimating];
    [self.view addSubview:SnowImageView];
}

-(void) StartSnowAnimation:(float) Duration {
    snowImage = [UIImage imageNamed:@"snow.png"];
    [NSTimer scheduledTimerWithTimeInterval:(0.3) target:self
                                   selector:@selector(animationTimerHandler:)
                                   userInfo:nil
                                   repeats:YES];
}

-(void) animationTimerHandler:(NSTimer*)theTimer {
    UIImageView *snowView = [[UIImageView alloc] initWithImage:snowImage];
    
    int startX = round(random() % 375);
    int endX = round(random() % 375);
    double snowSpeed = 10 + (random() % 10) / 10.0;
    
    snowView.alpha = 0.9;
    snowView.frame = CGRectMake(startX, -20, 20, 20);
    
    [UIView beginAnimations:nil context:(__bridge void*)(snowView)];
    [UIView setAnimationDuration:snowSpeed];
    
    snowView.frame = CGRectMake(endX, 667.0, 20, 20);
    [UIView setAnimationDidStopSelector:@selector (animationDidStop:finished:context:)];
    [UIView setAnimationDelegate:self];
    [SnowImageView addSubview:snowView];
    [UIView commitAnimations];
}

-(void) animationDidStop:(NSString *)animationID finished:(NSNumber *) finished
                 context:(void *) context {
    [(__bridge UIImageView *)context removeFromSuperview];
}

@end
