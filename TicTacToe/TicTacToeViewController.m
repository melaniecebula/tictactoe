//
//  TicTacToeViewController.m
//  TicTacToe
//
//  Created by Melanie Cebula on 7/8/13.
//  Copyright (c) 2013 Melanie Cebula. All rights reserved.
//

#import "TicTacToeViewController.h"

@interface TicTacToeViewController ()

@end

@implementation TicTacToeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressButton:(id)sender {
    if ([sender currentTitle] == NULL) {
        NSLog(@"hi");
        NSLog(@"%@", [sender currentTitle]);
        [sender setTitle:@"X" forState:UIControlStateNormal];
        [sender setTitle:@"X" forState:UIControlStateSelected];
        [sender setTitle:@"X" forState:UIControlStateHighlighted];
        [sender setTitle:@"X" forState:UIControlStateReserved];
        [sender setTitle:@"X" forState:UIControlStateApplication];
    } else {
        //Y U NO WORK
        NSLog(@"%@", [sender currentTitle]);
        NSLog(@"Please select a different square");
    }
}
@end
