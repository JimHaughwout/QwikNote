//
//  QwikNoteAppDelegate.h
//  QwikNote
//
//  Created by Jim Haughwout on 7/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Etch;
@class FrameView;

@interface QwikNoteAppDelegate : UIResponder <UIApplicationDelegate> {
	Etch *sketch;
    FrameView *buttonView; 
	UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;

@end
