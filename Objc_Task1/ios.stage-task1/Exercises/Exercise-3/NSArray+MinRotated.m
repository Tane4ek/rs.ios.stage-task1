#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    if (self.count == 0) {
        return nil;
    }
    if (self.count == 1) {
        return self[0];
    }
    NSInteger start = 0;
    NSInteger end = self.count - 1;
    NSNumber *startVal = self[start];
    NSNumber *endVal = self[end];
    if (startVal.integerValue < endVal.integerValue) {
        return startVal;
    }
    for (;;) {
        NSNumber *startVal = self[start];
        NSNumber *endVal = self[end];
        if ( end == start + 1) {
            return (endVal.integerValue < startVal.integerValue ? endVal : startVal);
        }
        NSInteger mid = (start + end) / 2;
        NSNumber *midVal = self[mid];
        if (midVal.integerValue < startVal.integerValue ) {
            mid = end;
        }else {
            start = end;
        }
    }
    
    return nil;
}

@end
