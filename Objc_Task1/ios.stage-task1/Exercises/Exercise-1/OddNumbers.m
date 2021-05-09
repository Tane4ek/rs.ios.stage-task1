//
//  OddNumbers.m
//  ios.stage-task1
//
//  Created by Alex Tsybulko on 4.05.21.
//

#import <Foundation/Foundation.h>
#import "OddNumbers.h"

@implementation OddNumbers

- (NSInteger)oddNumbers:(NSArray <NSNumber *> *)array {
    NSInteger cnt = 0;
    for (NSNumber *number in array) {
        if (number.integerValue % 2 == 1) {
            cnt += 1;
        }
    }
    return cnt;
}

@end
