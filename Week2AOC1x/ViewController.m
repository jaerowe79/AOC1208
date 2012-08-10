//
//  ViewController.m
//  Project 2
//
//  Created by Janis Jae on 8/8/12.
//  Copyright (c) 2012 Janis Jae. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //Background color
    self.view.backgroundColor = [UIColor blackColor];
    
    //Book Title
    bookTitle = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 20.0f)];
    if (bookTitle != nil)
    {
        bookTitle.backgroundColor = [UIColor blueColor];
        bookTitle.text = @"Twilight";
        bookTitle.textAlignment = UITextAlignmentCenter;
        bookTitle.textColor = [UIColor redColor];
    }
    
    [self.view addSubview:bookTitle];
    
    //Author info
    author = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 50.0f, 100.0f, 20.0f)];
    if (author != nil)
    {
        author.backgroundColor = [UIColor whiteColor];
        author.text = @"Author:";
        author.textAlignment = UITextAlignmentRight;
        author.textColor = [UIColor brownColor];
    }
    [self.view addSubview:author];
    
    authorName = [[UILabel alloc] initWithFrame:CGRectMake(110.0f, 50.0f, 320.0f, 20.0f)];
    if (authorName != nil)
    {
        authorName.backgroundColor = [UIColor yellowColor];
        authorName.text = @"Stephenie Meyer";
        authorName.textAlignment = UITextAlignmentLeft;
        authorName.textColor = [UIColor magentaColor];
    }
    [self.view addSubview:authorName];
    
    //Published info
    published = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 80.0f, 100.0f, 20.0f)];
    if (published != nil)
    {
        published.backgroundColor = [UIColor purpleColor];
        published.text = @"Published:";
        published.textAlignment = UITextAlignmentRight;
        published.textColor = [UIColor redColor];
    }
    [self.view addSubview:published];
    
    publishedDate = [[UILabel alloc] initWithFrame:CGRectMake(110.0f, 80.0f, 320.0f, 20.0f)];
    if (publishedDate != nil)
    {
        publishedDate.backgroundColor = [UIColor magentaColor];
        publishedDate.text = @"October 5, 2005";
        publishedDate.textAlignment = UITextAlignmentLeft;
        publishedDate.textColor = [UIColor lightGrayColor];
    }
    [self.view addSubview:publishedDate];
    //Summary
    
    summary = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 110.0f, 100.0f, 20.0f)];
    if (summary != nil)
    {
        summary.backgroundColor = [UIColor greenColor];
        summary.text = @"Summary";
        summary.textAlignment = UITextAlignmentLeft;
        summary.textColor = [UIColor blackColor];
    }
    [self.view addSubview:summary];
    
    summaryText = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 130.0f, 320.0f, 250.0f)];
    if (summaryText != nil)
    {
        summaryText.backgroundColor = [UIColor greenColor];
        summaryText.text = @"Twilight is told by 17-year-old Bella Swan, who moves from Phoenix to the small town of Forks, Washington, to live with her dad for the remainder of high school. There, she meets Edward Cullen and his family, who possess an other-worldly and irresistible beauty and grace to which Bella is drawn. Twilight is the tale of Bella and Edward's burgeoning relationship, brimming with standard teenage drama alongside the unexpected, because, after all, Edward and his family are vampires...";
        summaryText.textAlignment = UITextAlignmentCenter;
        summaryText.textColor = [UIColor yellowColor];
        summaryText.numberOfLines = 13;
    }
    [self.view addSubview:summaryText];
    
    //List of Items
    
    //Items for array
    item1 = [[NSString alloc] initWithString:@"Vampires"];
    item2 = [[NSString alloc] initWithString:@"High School"];
    item3 = [[NSString alloc] initWithString:@"Sparkling"];
    item4 = [[NSString alloc] initWithString:@"Romance"];
    item5 = [[NSString alloc] initWithString:@"Awkward Teens"];
    //Create Array
    itemArray = [NSArray arrayWithObjects:item1, item2, item3, item4, item5, nil];
    //NSLog(@"%@", [itemArray description]);
    
    //Create Mutable String
    itemText = [[NSMutableString alloc] initWithCapacity:5];
    
    for (int x = 0; x < itemArray.count; x++) {
        [itemText appendString:[itemArray objectAtIndex: x]];
        if (x < itemArray.count -1) {
            [itemText appendString: @", "];
        }
    }
    
    itemList = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 400.0f, 100.0f, 20.0f)];
    if (itemList != nil)
    {
        itemList.backgroundColor = [UIColor redColor];
        itemList.text = @"List of items";
        itemList.textAlignment = UITextAlignmentLeft;
        itemList.textColor = [UIColor whiteColor];
    }
    [self.view addSubview:itemList];
    
    itemListText = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 420.0f, 320.0f, 40.0f)];
    if (itemListText != nil)
    {
        itemListText.backgroundColor = [UIColor darkGrayColor];
        itemListText.text = itemText;
        itemListText.textAlignment = UITextAlignmentCenter;
        itemListText.textColor = [UIColor blueColor];
        itemListText.numberOfLines = 2;
    }
    [self.view addSubview:itemListText];
    
    
    
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
