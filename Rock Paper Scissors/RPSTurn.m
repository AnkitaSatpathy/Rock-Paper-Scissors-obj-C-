//
//  RPSTurn.m
//  Rock Paper Scissors
//
//  Created by Ankita Satpathy on 18/08/17.
//  Copyright © 2017 Ankita Satpathy. All rights reserved.
//

#import "RPSTurn.h"

@implementation RPSTurn

-(instancetype)initWithMove:(Move)move {
    self = [super init];
    if (self){
        _move = move;
    }
    return self;
}
-(instancetype)init {
    self = [super init];
    if (self){
        _move = [self generateMove];
    }
    return self;
}

-(Move)generateMove {
    NSUInteger randomNumber = arc4random_uniform(3);
    
    switch (randomNumber) {
        case 0:
            return Rock;
            break;
        case 1:
            return Paper;
        case 2:
            return Scissors;
        default:
            return Invalid;
            break;
    }
}

-(BOOL)defeats:(RPSTurn *)opponent {
    if ((self.move == Paper && opponent.move == Rock) || (self.move == Scissors && opponent.move == Paper)
        || (self.move == Rock && opponent.move == Scissors)){
        return true;
    }
    else{
        return false;

    }
}

-(NSString*)description{
    switch (self.move) {
        case Paper:
            return @"Paper";
            break;
        case Rock:
            return @"Rock";
        case Scissors:
            return @"Scissors";
        case Invalid:
            return @"Invalid";
            
    }
}

@end
