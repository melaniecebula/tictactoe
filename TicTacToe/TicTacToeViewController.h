//
//  TicTacToeViewController.h
//  TicTacToe
//
//  Created by Melanie Cebula on 7/8/13.
//  Copyright (c) 2013 Melanie Cebula. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TicTacToeViewController : UIViewController {
    
}
 @property (weak, nonatomic) IBOutlet UILabel *userScore;
 @property (weak, nonatomic) IBOutlet UILabel *npcScore;
 @property (weak, nonatomic) IBOutlet UIButton *topLeftField;
 @property (weak, nonatomic) IBOutlet UIButton *topCenterField;
 @property (weak, nonatomic) IBOutlet UIButton *topRightField;
 @property (weak, nonatomic) IBOutlet UIButton *midLeftField;
 @property (weak, nonatomic) IBOutlet UIButton *midCenterField;
 @property (weak, nonatomic) IBOutlet UIButton *midRightField;
 @property (weak, nonatomic) IBOutlet UIButton *botLeftField;
 @property (weak, nonatomic) IBOutlet UIButton *botCenterField;
 @property (weak, nonatomic) IBOutlet UIButton *botRightField;
@end
