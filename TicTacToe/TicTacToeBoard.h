//
//  TicTacToeBoard.h
//  TicTacToe
//
//  Created by Melanie Cebula on 7/8/13.
//  Copyright (c) 2013 Melanie Cebula. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TicTacToeBoard : NSObject {
    
    
}

@property (nonatomic, strong) NSMutableArray *boardArray;

- (void)updateBoardwithColumn:(NSUInteger)column andRow:(NSUInteger)row;
- (void)checkForWin:(NSMutableArray *)b ;
@end
