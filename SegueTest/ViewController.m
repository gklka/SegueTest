//
//  ViewController.m
//  SegueTest
//
//  Created by GK on 15.09.18..
//  Copyright © 2015. Illion IT Group. All rights reserved.
//

#import "ViewController.h"
#import "PushedViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"prepareForSegue");
    
    if ([segue.identifier isEqualToString:@"Simple"]) {
        
        PushedViewController *controller = (PushedViewController *)segue.destinationViewController;
        NSLog(@"prepareForSegue setting labelString");
        
        [NSThread sleepForTimeInterval:1.0f];
        
        controller.labelString = @"Herp derp";
        
    } else if ([segue.identifier isEqualToString:@"Navigation"]) {
        
        UINavigationController *navigation = (UINavigationController *)segue.destinationViewController;
        PushedViewController *controller = (PushedViewController *)navigation.topViewController;
        NSLog(@"prepareForSegue setting labelString");

        [NSThread sleepForTimeInterval:1.0f];

        controller.labelString = @"Herp derp 2";
        
    }
}

- (IBAction)simpleFromCode:(id)sender {
    [self performSegueWithIdentifier:@"Simple from Code" sender:self];
}

- (IBAction)navigationFromCode:(id)sender {
    [self performSegueWithIdentifier:@"Navigation from Code" sender:self];
}

@end
