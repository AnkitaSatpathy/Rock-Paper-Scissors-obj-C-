//
//  RPSController.h
//  Rock Paper Scissors
//
//  Created by Ankita Satpathy on 18/08/17.
//  Copyright © 2017 Ankita Satpathy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSGame.h"


@interface RPSController : NSObject

-(void)throwDown:(Move) playersMove;
@property (nonatomic) RPSGame *game;
-(NSString*)resultString:(RPSGame*)game;
-(NSString*)messageForGame:(RPSGame*)game;
@end
