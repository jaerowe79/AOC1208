//
//  week3zViewController.m
//  AOC1 Week 3
//
//  Created by Janis Jae on 8/16/12.
//  Copyright 2012 Janis Jae All rights reserved.

#import "week3zViewController.h"

@interface week3zViewController ()

@end

@implementation week3zViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    // 4. Call the Append function with two NSStrings. Capture the result and
    // display a UIAlertView with the appended string using displayAlertWithString.

    NSString *stringOne = @"Hello, ";
    NSString *stringTwo = @"Janis!";
    [self displayAlertWithString:[self append:stringOne withString:stringTwo] title:@"Appened Strings" withTag:0];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}



- (void)add {

    
	// 6. Call the Add function passing in two integer values. Capture the return
    // of this function into a variable.

    NSInteger numberOne = 3;
    NSInteger numberTwo = 8;
    NSNumber *sum = [self add:numberOne withNumber:numberTwo];
    

    // 7. Bundle the returned integer into an NSNumber and then convert it to a
    // NSString and pass it to the DisplayAlertWithString function.
    //
    // 8. Give it some text for the title. The message will read, "The number is 00".
    // Replace the 00 with the integer passed into the function.

    NSString *numberString  = [NSString stringWithFormat:@"%@", sum];
    NSString *numberMessage = [NSString stringWithFormat:@"The number is %@", numberString];
    [self displayAlertWithString:numberMessage title:@"Added Numbers" withTag:1];
}


- (void)compare {

    // 9. Call the Comparee function with two integer values. If Compare returns yes,
    // display an UIAlertView both with the input values and the result using the
    // DisplayAlertWithString function

    NSInteger one = 5;
    NSInteger two = 5;
    BOOL comparedValue = [self compare:one withNumber:two];
    if (comparedValue) {
        NSString *message = [NSString stringWithFormat:@"First number was: %d. Second number was: %d. The BOOL value is: %d.", one, two, comparedValue];
        [self displayAlertWithString:message title:@"Compared Numbers" withTag:2];
    }
}


// 1. Create a function called Add. This function will take two NSInteger
// or int types and return the result of an addition between these two.

- (NSNumber *)add:(NSInteger)numberOne withNumber:(NSInteger)numberTwo {
    return [NSNumber numberWithInteger:(numberOne + numberTwo)];
}


// 2. Create a BOOL function called Compare that takes two NSInteger values.
// Return Yes or No based on whether the values are equal.

- (BOOL)compare:(NSInteger)numberOne withNumber:(NSInteger)numberTwo {
    BOOL comparedBool;
    
    if (numberOne == numberTwo) {
        comparedBool = YES;
    } else {
        comparedBool = NO;
    }
    
    return comparedBool;
}


// 3. Create a function called Append. This function will take two NSStrings
// and return a new NSString containing the appended strings using an
// NSMutableString and the Append method.

- (NSString *)append:(NSString *)stringOne withString:(NSString *)stringTwo {
    return [NSString stringWithFormat:@"%@ %@", stringOne, stringTwo];
}


// 5. Create a function called DisplayAlertWithString. This function will take
// as a parameter an NSString.
//
//   DisplayAlertWithString Function
//      1. Take the passed in NSString and display it in the alert view
//      2. Create an UIAlertView

- (void)displayAlertWithString:(NSString *)message title:(NSString *)title withTag:(NSInteger)tag {
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:title
                                                     message:message
                                                    delegate:self
                                           cancelButtonTitle:@"Dismiss"
                                           otherButtonTitles:nil];
    [alert setTag:tag];
    [alert show];
}


- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    switch (alertView.tag) {
        case 0:
            [self add];
            break;
            
        case 1:
            [self compare];
            break;
    }
}

@end




