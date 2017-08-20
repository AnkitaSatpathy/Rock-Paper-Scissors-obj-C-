//
//  RPSController.m
//  Rock Paper Scissors
//
//  Created by Ankita Satpathy on 18/08/17.
//  Copyright © 2017 Ankita Satpathy. All rights reserved.
//

#import "RPSController.h"
#import "RPSTurn.h"
#import "RPSGame.h"

@implementation RPSController
-(void)throwDown:(Move) playersMove {
    
    RPSTurn *playersTurn = [[RPSTurn alloc]initWithMove:playersMove];
    RPSTurn *computersTurn = [[RPSTurn alloc] init];
   //computersTurn.move = playersTurn.move;
    
   self.game = [[RPSGame alloc] initWithFirstTurn:playersTurn secondTurn:computersTurn];
}
-(NSString*)resultString:(RPSGame*)game {
    return [game.firstTurn defeats:game.secondTurn] ? @"You Win!" : @"You Lose!";
}
-(NSString*)messageForGame:(RPSGame*)game {
    if (game.firstTurn.move == game.secondTurn.move) {
        return @"It's a tie!";
    }
    else{
        
        NSString *winnerString = [[game winner] description];
        NSString *loserString = [[game loser] description];
        NSString *resultString  = [self resultString: game];
       
        
        NSString *wholeString =  [NSString stringWithFormat:@"%@ %@ %@ %@ %@", winnerString, @" defeats ", loserString, @".",  resultString];
        return wholeString;
    }
}

@end
