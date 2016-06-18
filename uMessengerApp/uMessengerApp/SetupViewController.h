#import <UIKit/UIKit.h>

@class ViewController;

@interface SetupViewController : UIViewController

-(IBAction)LogIn;

@property(weak, nonatomic) IBOutlet UITextField *pUserIDField;
@property(weak, nonatomic) IBOutlet UITextField *pPassField;
@property(strong, nonatomic) ViewController *pRootViewController;

@end