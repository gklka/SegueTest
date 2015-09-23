//
//  PushedViewController.m
//  SegueTest
//
//  Created by GK on 15.09.18..
//  Copyright © 2015. Illion IT Group. All rights reserved.
//

#import "PushedViewController.h"

@interface PushedViewController ()

@end

@implementation PushedViewController

- (void)viewDidLoad {
    NSLog(@"PushedViewController viewDidLoad");
    [super viewDidLoad];
    
    NSLog(@"PushedViewController viewDidLoad after super");
    
    NSLog(@"PushedViewController setting string to: %@", self.labelString);
    
    if (self.labelString) {
        self.label.text = self.labelString;
    } else {
        self.label.text = @"LABEL IS NOT SET";
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)close:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
