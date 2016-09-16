

#import "EmotionManager.h"

@implementation EmotionManager

- (void)dealloc {
    [self.emotions removeAllObjects];
    self.emotions = nil;
}

@end
