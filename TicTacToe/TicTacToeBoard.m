//
//  TicTacToeBoard.m
//  TicTacToe
//
//  Created by Melanie Cebula on 7/8/13.
//  Copyright (c) 2013 Melanie Cebula. All rights reserved.
//

#import "TicTacToeBoard.h"
#import "TicTacToeViewController.h"

@interface TicTacToeBoard () {
    
}

@end

@implementation TicTacToeBoard

- (id)init {
    self = [super init];
    if (self) {
        _boardArray = [NSMutableArray array];
        //board has 3 columns, each with three rows
        for (int i = 0; i < 3; i++) {
            //columns:
            [_boardArray addObject: [NSMutableArray array]];
            for (int j = 0; j < 3; j++) {
                //rows:
                [_boardArray[i] addObject: [NSMutableArray array]];
                //[_boardArray[i] insertObject:@"" atIndex:j];
            }
        }
    }
    return self;
}

- (void)updateBoardwithColumn:(NSUInteger)column andRow:(NSUInteger)row {
    [(NSMutableArray *)_boardArray[column] replaceObjectAtIndex:row withObject:@"X"];
    
}

- (BOOL)checkForWin:(NSMutableArray*)b {
    NSLog(@"checking for win");
    
    if (b[0][0] != '\0' && b[0][0] == b[0][1] && b[0][1]== b[0][2]) {
        NSLog(@"Row 1 wins");
        return YES;
        
    }
    if (b[1][0] != '\0' && b[1][0] == b[1][1] && b[1][1] == b[1][2]) {
        NSLog(@"Row 2 wins");
        return YES;
    }
    if (b[2][0] != '\0' && b[2][0] == b[2][1] && b[2][1] == b[2][2]) {
        NSLog(@"Row 3 wins");
        return YES;
    }
    if (b[0][0] != '\0' &&  b[0][0] == b[1][0] && b[1][0] == b[2][0]) {
        NSLog(@"Column 1 wins");
        return YES;
    }
    if (b[0][1] != '\0' &&  b[0][1] == b[1][1] && b[1][1] == b[2][1]) {
        NSLog(@"Column 2 wins");
        return YES;
    }
    if (b[0][2] != '\0' &&  b[0][2] == b[1][2] && b[1][2] == b[2][2]) {
        NSLog(@"Column 3 wins");
        return YES;
    }
    if (b[0][0] != '\0' && b[0][0] == b[1][1] && b[1][1] == b[2][2]) {
        NSLog(@"Horizontal win!");
        return YES;
    }
    if (b[0][2] != '\0' && b[0][2] == b[1][1] && b[1][1] == b[0][2]) {
        NSLog(@"Horizontal win!");
        return YES;
    }
    return NO;
}
@end
