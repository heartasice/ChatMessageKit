
#import <Foundation/Foundation.h>


@interface EmotionManager : NSObject

@property (nonatomic, copy) NSString *emotionName;
/**
 *  某一类表情的数据源
 */
@property (nonatomic, strong) NSMutableArray *emotions;

@end
