#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    if (self.length == 0) {
        return 0;
    }
    for (int i = 0; i < self.length; ++i) {
        unichar character = [self characterAtIndex:i];
        if ((character < '0') || (character > '9')){
            return NO;
        }
    }
    return YES;
}

@end
