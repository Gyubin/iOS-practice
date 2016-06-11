#import "ViewController.h"
#import "SnowAniViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize infoButton

- (void)viewDidLoad {
    SnowAniViewController *viewController = [self.storyboard
        instantiateViewControllerWithIdentifier:@"SnowAniViewController"];

    [self.view insertSubview:viewController.view belowSubview:infoButton];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

@end
