//
//  FrameView.m
//  QwikNote
//
//  Created by Jim Haughwout on 7/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FrameView.h"

@implementation FrameView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        NSLog(@"Bar = %.f x %.f", self.frame.size.width, self.frame.size.height);
        
        self.backgroundColor = [UIColor grayColor];
        CGRect b = self.bounds;
		CGSize s = CGSizeMake(100, 36);	//size of button
               
        UITextView *label = [[UITextView alloc] initWithFrame:self.bounds];
        label.backgroundColor = [UIColor clearColor];
		label.textColor = [UIColor whiteColor];
        label.font = [UIFont italicSystemFontOfSize:32];
		//label.font = [UIFont fontWithName: @"Helvetica" size: 36];
		label.editable = NO;	//Don't pop up a keyboard.
        label.text = @"Qwik Note";

		button = [UIButton buttonWithType: UIButtonTypeRoundedRect];
		button.frame = CGRectMake(
                                  b.size.width - s.width - 10,
                                  b.origin.y + (b.size.height - s.height) / 2,
                                  s.width,
                                  s.height
                                  );
        
		[button setTitleColor: [UIColor grayColor] forState: UIControlStateNormal];
		[button setTitle: @"Clear Slate" forState: UIControlStateNormal];
        
		[button addTarget: [UIApplication sharedApplication].delegate
                   action: @selector(clearEtch:)
         forControlEvents: UIControlEventTouchUpInside
         ];
        [self addSubview: label];
		[self addSubview: button];
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
