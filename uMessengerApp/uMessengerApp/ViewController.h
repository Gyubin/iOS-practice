#import <UIKit/UIKit.h>

@class MemberListViewController;
@class SetupViewController;

@interface ViewController : UITabBarController < UITabBarControllerDelegate>

-(void)Login:(NSString *)pUserID PassWord:(NSString *)pPass;

@property (strong, nonatomic) MemberListViewController *pMemberListViewController;
@property (strong ,nonatomic) SetupViewController *pSetupViewController;
@property (strong, nonatomic) NSString *UserID;

@end

