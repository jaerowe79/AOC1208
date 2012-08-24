//
//  week3zAppDelegate.h
//  week3z
//
//  Created by Janis Jae on 8/16/12.
//  Copyright 2012 Janis Jae All rights reserved.
//

#import <UIKit/UIKit.h>

@class week3zViewController;

@interface week3zAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    week3zViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet week3zViewController *viewController;

@end

