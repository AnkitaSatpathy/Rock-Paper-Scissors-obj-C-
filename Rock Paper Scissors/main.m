//
//  main.m
//  Rock Paper Scissors
//
//  Created by Ankita Satpathy on 18/08/17.
//  Copyright © 2017 Ankita Satpathy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RPSController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        RPSController *controller = [[RPSController alloc]init];
        [controller throwDown:Rock];
        NSString *resultMessage = [controller messageForGame:controller.game];
        NSLog(@"%@", resultMessage);
        
    }
    return 0;
}
