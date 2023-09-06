//
//  ViewController.m
//  TestInvygoApplication
//
//  Created by Sajid on 5/9/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UILabel *textLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 300, 40)];
    textLabel.text = @"This application will be used to change context to invygo application"; // Set the text
    textLabel.textColor = [UIColor blackColor]; // Set text color
    textLabel.font = [UIFont systemFontOfSize:16]; // Set font
    textLabel.numberOfLines = 0;
    [self.view addSubview:textLabel];
}


@end
