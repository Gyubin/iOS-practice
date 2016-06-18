#import "ViewController.h"
#import "MemberListViewController.h"
#import "SetupViewController.h"

@implementation ViewController

@synthesize pMemberListViewController;
@synthesize pSetupViewController;
@synthesize UserID;

- (void)viewDidLoad {
    self.pMemberListViewController = [[MemberListViewController alloc] initWithNibName:@"MemberListViewController" bundle:nil];
    
    self.pSetupViewController = [[SetupViewController alloc] initWithNibName:@"SetupViewController" bundle:nil];
    
    self.viewControllers = @[self.pSetupViewController, self.pMemberListViewController];
    self.delegate = self;
    pSetupViewController.pRootViewController = self;
    [super viewDidLoad];
}

-(void)Login:(NSString *)pUserID PassWord:(NSString *)pPass {
    [pMemberListViewController ServerConnect:pUserID PassWord:pPass];
}
@end
