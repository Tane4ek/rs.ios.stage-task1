#import "LeaderBoardTracker.h"

@interface LeaderBoardTracker()

@property (nonatomic, strong) NSArray <NSNumber *> *playersPlaces;

@end

@implementation LeaderBoardTracker

- (NSArray <NSNumber *> *)trackLeaderBoard:(NSArray <NSNumber *> *)rankedArray
                               playerArray:(NSArray <NSNumber *> *)playerArray {
    NSMutableArray *results = [[NSMutableArray alloc] init];
    for (NSNumber *player in playerArray) {
        if (rankedArray.count == 0) {
            [results addObject: [NSNumber numberWithInteger:1]];
        }else{
            NSInteger score = 0;
            NSInteger prevScore = -1;
            NSInteger result = -1;
            for (NSNumber *ranked in rankedArray) {
                if (player.integerValue >= ranked.integerValue){
                    result = score + 1;
                    break;
                }
                if (prevScore != ranked.integerValue){
                    prevScore = ranked.integerValue;
                    score +=1;
                }
            }
            if (result == -1){
                result = score + 1;
            }
            [results addObject: [NSNumber numberWithInteger:result]];
        }
    }
    

    return results;
}

@end
