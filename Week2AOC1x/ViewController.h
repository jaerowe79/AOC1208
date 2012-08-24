//
//  ViewController.h
//  Project 2 AOC
//
//  Created by Janis Jae on 8/9/12.
//  Copyright (c) 2012 Janis Jae. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UILabel *bookTitle;
    UILabel *author;
    UILabel *authorName;
    UILabel *published;
    UILabel *publishedDate;
    UILabel *summary;
    UILabel *summaryText;
    UILabel *itemList;
    UILabel *itemListText;
    NSString *item1;
    NSString *item2;
    NSString *item3;
    NSString *item4;
    NSString *item5;
    NSArray *itemArray;
    NSMutableString *itemText;
}
@end