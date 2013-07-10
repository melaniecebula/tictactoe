//
//  TicTacToeViewController.m
//  TicTacToe
//
//  Created by Melanie Cebula on 7/8/13.
//  Copyright (c) 2013 Melanie Cebula. All rights reserved.
//

#import "TicTacToeViewController.h"
#import "TicTacToeBoard.h"

@interface TicTacToeViewController ()

@property TicTacToeBoard *board;

@end

@implementation TicTacToeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _board = [[TicTacToeBoard alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressButton:(id)sender {
    if ([sender currentTitle] == NULL) {
        [sender setTitle:@"X" forState:UIControlStateNormal];
        //update TicTacToe Board's state

        if ([sender isEqual:_topLeftField]) {
            [_board updateBoardwithColumn:0 andRow:0];
        }
        if ([sender isEqual:_topCenterField]) {
            [_board updateBoardwithColumn:0 andRow:1];
        }
        if ([sender isEqual:_topRightField]) {
            [_board updateBoardwithColumn:0 andRow:2];
        }
        if ([sender isEqual:_midLeftField]) {
            [_board updateBoardwithColumn:1 andRow:0];
        }
        if ([sender isEqual:_midCenterField]) {
            [_board updateBoardwithColumn:1 andRow:1];
        }
        if ([sender isEqual:_midRightField]) {
            [_board updateBoardwithColumn:1 andRow:2];
        }
        if ([sender isEqual:_botLeftField]) {
            [_board updateBoardwithColumn:2 andRow:0];
        }
        if ([sender isEqual:_botCenterField]) {
            [_board updateBoardwithColumn:2 andRow:1];
        }
        if ([sender isEqual:_botRightField]) {
            [_board updateBoardwithColumn:2 andRow:2];
        }
        [_board checkForWin:[_board boardArray]];
        //delegate (takes in board status)  --> has anyone won? --> call npc turn
    } else {
        NSLog(@"%@", [sender currentTitle]);
        NSLog(@"Please select a different square");
    }
    //NPC's turn
}

@end
