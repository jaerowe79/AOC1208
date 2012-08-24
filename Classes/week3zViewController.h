//
//  week3zViewController.h
//  week3z
//
//  Created by Janis Jae on 8/16/12.
//  Copyright 2012 Janis Jae All rights reserved.
//

#import <UIKit/UIKit.h>

@interface week3zViewController : UIViewController <UIAlertViewDelegate>

- (NSNumber *)add:(NSInteger)numberOne withNumber:(NSInteger)numberTwo;
- (NSString *)append:(NSString *)stringOne withString:(NSString *)stringTwo;
- (BOOL)compare:(NSInteger)numberOne withNumber:(NSInteger)numberTwo;
- (void)displayAlertWithString:(NSString *)message title:(NSString *)title withTag:(NSInteger)tag;

@end