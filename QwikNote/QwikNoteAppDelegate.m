//
//  QwikNoteAppDelegate.m
//  QwikNote
//
//  Created by Jim Haughwout on 7/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "QwikNoteAppDelegate.h"
#import "Etch.h"
#import "FrameView.h"

@implementation QwikNoteAppDelegate
@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	// Override point for customization after application launch.
	UIScreen *screen = [UIScreen mainScreen];
    NSLog(@"Screen = %.f x %.f", screen.bounds.size.width, screen.bounds.size.height);
    NSLog(@"App = %.f x %.f", screen.applicationFrame.size.width, screen.applicationFrame.size.height);
    
	CGFloat buttonFrameHeight = 56;
    
    CGRect sketchViewFrame = CGRectMake(screen.applicationFrame.origin.x, 
                                    screen.applicationFrame.origin.y,
                                    screen.applicationFrame.size.width,
                                    screen.applicationFrame.size.height - buttonFrameHeight);
    
    CGRect buttonViewFrame = CGRectMake(screen.applicationFrame.origin.x, 
                                    screen.applicationFrame.size.height - buttonFrameHeight,
                                    screen.applicationFrame.size.width,
                                    buttonFrameHeight);

	sketch = [[Etch alloc] initWithFrame: sketchViewFrame];
    buttonView = [[FrameView alloc] initWithFrame: buttonViewFrame];
	self.window = [[UIWindow alloc] initWithFrame: screen.bounds];
  

    
    
	[self.window addSubview: sketch];
    [self.window addSubview: buttonView];
	[self.window makeKeyAndVisible];
	return YES;
}

- (void) clearEtch: (id) sender {
	//The sender is the button that was pressed.
    
	NSLog(@"The \"%@\" button was pressed.",
		  [sender titleForState: UIControlStateNormal]);
    
	[sketch clearPath];
}




- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
