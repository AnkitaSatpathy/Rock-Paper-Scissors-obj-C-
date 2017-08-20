//
//  RPSGame.h
//  Rock Paper Scissors
//
//  Created by Ankita Satpathy on 18/08/17.
//  Copyright © 2017 Ankita Satpathy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSTurn.h"

@interface RPSGame : NSObject

@property (nonatomic) RPSTurn *firstTurn;
@property (nonatomic) RPSTurn *secondTurn;
-(instancetype)initWithFirstTurn:(RPSTurn*) playerTurn secondTurn:(RPSTurn*)computerTurn;
-(RPSTurn*)winner;
-(RPSTurn*)loser;
@end
