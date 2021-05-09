#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    if (number == nil) {
        return @[];
    }
    int resuide;
    int num = number.intValue;
    NSMutableArray *otherArray = [[NSMutableArray alloc] init];
    if (num < 0) {
        num = num * (-1);
    }
    while (num != 0) {
        resuide = num % 10;
        num = num / 10;
        [otherArray addObject:[NSString stringWithFormat:@"%d", resuide]];
    }
    return otherArray;
}

@end
