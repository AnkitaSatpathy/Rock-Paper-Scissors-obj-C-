//
//  RPSTurn.h
//  Rock Paper Scissors
//
//  Created by Ankita Satpathy on 18/08/17.
//  Copyright © 2017 Ankita Satpathy. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Move) {
    Rock,
    Paper,
    Scissors,
    Invalid,
};

@interface RPSTurn : NSObject

-(instancetype)initWithMove:(Move)move;
-(instancetype)init;
-(NSString*)description;

@property (nonatomic) Move move;
-(Move)generateMove;
-(BOOL)defeats:(RPSTurn *)opponent;
@end
